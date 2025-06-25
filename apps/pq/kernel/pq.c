/*
 *                             The MIT License
 *
 * RISC-V Lookup Table Acceleration
 * Copyright (c) 2025 by Weihong Xu  <weihong.xu@epfl.ch>
 *
 * This file is part of RVV-LUT Acceleration.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * PROJECT: RVV-LUT Acceleration for Product Quantization
 * AUTHOR(S): Weihong Xu <weihong.xu@epfl.ch>
 * DESCRIPTION: RVV-LUT kernel functions for Product Quantization
 */

#include "pq.h"
#include <stdbool.h>
#include <stdint.h>
#include <string.h>

#ifndef SPIKE
#include "printf.h"
#else
#include <stdio.h>
#endif

#define INT16 1
#define INT32 2

#ifndef DTYPE
#warning                                                                       \
    "Please explicitly define DTYPE. Example command: make bin/dtype-matmul ENV_DEFINES='-DDTYPE=FLOAT64' def_args_dtype-matmul='float64 128 128 128'. Compiling now under the assumption of DTYPE == FLOAT64"
#define DTYPE INT16
#endif

#if DTYPE == INT16
typedef int16_t _DTYPE;
// #define _KERNEL pq_adt

#endif

#define VMUL "m1"

#include "riscv_vector.h"

// Define the macro for 2D to 1D index conversion
#define INDEX(row, col, num_cols) ((row) * (num_cols) + (col))

// Load Query Vector into VRF
void load_query(_DTYPE *query, uint16_t len){
    // use m1 for loading
    asm volatile("vsetvli zero, %0, e16, m1, ta, ma" ::"r"(len));
    asm volatile("vle16.v v4, (%0);" ::"r"(query));
}

// Compute PQ Asymmetric Distance Table (ADT) 

// Version 1: Scalar Core
void compute_pq_adt(_DTYPE *query, _DTYPE *cb, _DTYPE *adt, uint16_t k_cluster, uint16_t dim, uint16_t n_subvec){
  uint16_t dim_sub = dim/n_subvec;

  // Version 1: We use RISC-V scalar core to compute ADT
  // Note: ADT output is transposed for continuous memory access
  for(int i=0; i<k_cluster; i++){
    for(int j=0; j<n_subvec; j++){
      adt[INDEX(j, i, k_cluster)] = 0;

      for(int k=0; k<dim_sub; k++){
        adt[INDEX(j, i, k_cluster)] += cb[INDEX(i, k, dim)+j*dim_sub] * query[INDEX(j, k, dim_sub)];
      }
    }
  }
  //////////////////////////////////////////////
  // Version 2: SIMD Core
  // Note: ADT output is transposed for continuous memory access

  //////////////////////////////////////////////
}

// Load ADT into VRF
void load_pq_adt(_DTYPE *lut, uint16_t k_cluster, uint16_t n_subvec){
  // use m1 for loading
  asm volatile("vsetvli zero, %0, e16, m1, ta, ma" ::"r"(k_cluster*n_subvec));
  asm volatile("vle16.v v0, (%0);" ::"r"(lut));
}

// Load Codewords into VRF
void load_codeword_batch(_DTYPE *codeword, uint16_t bsz, uint16_t n_subvec){
  // use m1 for loading
  asm volatile("vsetvli zero, %0, e16, m1, ta, ma" ::"r"(bsz*n_subvec));
  asm volatile("vle16.v v8, (%0);" ::"r"(codeword));
}

// PQ Lookup Table (LUT) for Searching
void pq_lut(uint16_t batch_size, uint16_t n_subvec, _DTYPE *dist){
  // Lookup table
  asm volatile("vrgatherei16.vv v16, v0, v8;");

  // SIMD Accumulation
  uint16_t n_elements = batch_size*n_subvec;
  while(n_subvec > 1){
    n_elements >>= 1;
    asm volatile("vslidedown.vx v24, v16, %0;" ::"r"(n_elements));
    n_subvec >>= 1;
    asm volatile("vsadd.vv v16, v16, v24;");
  }
}
/************************************************************/
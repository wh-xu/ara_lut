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

#ifndef _PQ_H
#define _PQ_H

#include <stdint.h>

// Load Query Vector into VRF
void load_query(int16_t *query, uint16_t len);

// Compute PQ Asymmetric Distance Table (ADT) 
void compute_pq_adt(int16_t *query, int16_t *cb, int16_t *lut, uint16_t k_cluster, uint16_t dim, uint16_t dim_sub);

// Load ADT into VRF
void load_pq_adt(int16_t *lut, uint16_t k_cluster, uint16_t n_subvec);

// Load Codewords into VRF
void load_codeword_batch(int16_t *codeword, uint16_t bsz, uint16_t n_subvec);

// PQ Lookup Table (LUT) for Searching
void pq_lut_single(uint16_t k_cluster, uint16_t n_subvec, uint16_t bsz_subvec, int16_t *dist);

#endif

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
 * DESCRIPTION: Utility functions for RVV-LUT kernel
 */

#ifndef _UTILS_H
#define _UTILS_H

#include <stdint.h>

#ifdef SPIKE
#include <stdio.h>
#elif defined ARA_LINUX
#include <stdio.h>
#else
#include "printf.h"
#endif

// Generate random uint16_t
uint16_t generate_random_uint16();

// Generate random uint16_t array
void generate_random_uint16_array(uint16_t *array, uint16_t size);

// Generate random uint8_t
uint8_t generate_random_uint8();

// Generate random uint8_t array
void generate_random_uint8_array(uint8_t *array, uint16_t size);

// Generate Codebook
void generate_codebook(uint16_t *codebook, uint16_t k_cluster, uint16_t dim);

// Generate Codewords
void generate_codewords(uint8_t *codewords, uint16_t n, uint16_t n_subvec);

// Print array
void print_array(int16_t *array, uint16_t size, uint16_t n_per_line);
#endif

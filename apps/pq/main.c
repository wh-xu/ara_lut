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
 * PROJECT: RVV-LUT Acceleration
 * AUTHOR(S): Weihong Xu <weihong.xu@epfl.ch>
 * DESCRIPTION: RVV-LUT kernel functions 
 */

#include <stdio.h>
#include <stdint.h>

#ifdef SPIKE
#include <stdio.h>
#elif defined ARA_LINUX
#include <stdio.h>
#else
#include "printf.h"
#endif
#include "runtime.h"

#include <riscv_vector.h>
#include "kernel/utils.h"
#include "kernel/pq.h"

// Define PQ parameters:
extern uint64_t k_cluster;
extern uint64_t n_dim;
extern uint64_t n_subvec;
extern uint64_t n_cw;
extern uint64_t n_query;

extern int16_t codebook[] __attribute__((aligned(32 * NR_LANES), section(".l2")));
extern uint8_t codeword[] __attribute__((aligned(32 * NR_LANES), section(".l2")));

extern int16_t query[] __attribute__((aligned(32 * NR_LANES), section(".l2")));

extern int16_t gt_adt[] __attribute__((aligned(32 * NR_LANES), section(".l2")));
extern int16_t gt_dist[] __attribute__((aligned(32 * NR_LANES), section(".l2")));

int main(){
    int n_runs = 100;
    int vl = 4096/16;

    // Init test data
    int16_t pq_adt[k_cluster*n_subvec];
    uint16_t pq_cw[1024];
    int16_t res[1024];

    uint16_t bsz = k_cluster;

    for(int i=0; i<bsz; i++){
        for(int j=0; j<n_subvec; j++){
            pq_cw[j*bsz+i] = codeword[i*n_subvec+j] + j*bsz; // add offset to ensure correctness
        }
    }

    // Set vector length
    size_t avl = __riscv_vsetvl_e16m1(vl);
    if(avl < k_cluster*n_subvec) {
        printf("Error: Vector length is less than k_cluster*n_subvec\n");
        return 0;
    }

    #ifdef SPIKE
    printf("\nk_cluster: %d", k_cluster);
    printf("\nn_dim: %d", n_dim);
    printf("\nn_subvec: %d", n_subvec);
    printf("\nn_cw: %d", n_cw);
    printf("\nn_query: %d", n_query);

    printf("\nquery:\n");
    print_array(query, n_dim, n_dim);

    printf("\ndist:\n");
    print_array(gt_dist, n_cw, n_cw);

    printf("\nadt:\n");
    print_array(gt_adt, k_cluster*n_subvec, n_subvec);
    #endif

    start_timer();
    // Compute transposed PQ ADT 
    compute_pq_adt(query, codebook, pq_adt, k_cluster, n_dim, n_subvec);
    
    #ifdef SPIKE
    printf("\npq_adt:\n");
    print_array(pq_adt, k_cluster*n_subvec, k_cluster);
    printf("\npq_cw:\n");
    print_array(pq_cw, bsz*n_subvec, bsz);
    #endif

    // Compute PQ LUT
    load_pq_adt(pq_adt, k_cluster, n_subvec);
    load_codeword_batch(pq_cw, bsz, n_subvec);
    for(int i=0; i<n_runs; i++){
        pq_lut(bsz, n_subvec, gt_dist);
    }
    stop_timer();

    #ifdef SPIKE
    asm volatile("vsetvli zero, %0, e16, m1, ta, ma" ::"r"(bsz));
    asm volatile("vse16.v v16, (%0);" ::"r"(res));
    printf("\npsum:\n");
    print_array(res, bsz, bsz);
    #endif

    uint64_t runtime = get_timer();
    printf("\n\nThe execution took %d cycles.\n", runtime);

    return 0;
}
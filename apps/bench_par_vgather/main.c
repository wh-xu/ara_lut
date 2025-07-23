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
 * DESCRIPTION: Bench optimized parallel vrgatherei16.vv instruction
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
#include "rvv_def.h"


int main(){
    const uint16_t vl = 512;
    const uint8_t start_cb = CB4;
    const uint8_t end_cb = CB4;
    const uint8_t start_vmul = VLMUL8;
    const uint8_t end_vmul = VLMUL8;
    const uint8_t lut_pack = VPACK_ON;

    // Init test data
    uint16_t buf_idx[vl], buf_idx2[vl], buf_val[vl], buf_res[vl*8];
    
    static uint32_t seed = 12345;
    for(uint16_t i=0; i<vl; i++){
        // Simple linear congruential generator for random values
        // seed = seed * 1103515245 + 12345;
        // buf_idx[i] = ((seed >> 16) & 0xFFFF) % 16;
        buf_idx[i] = (i+2) % 16;
        buf_idx2[i] = (i+3) % 16;
        buf_val[i] = i+1;
    }

    // Init loading and config
    uint32_t cfg_load, cfg_exec, cfg_agg;
    cfg_load = get_vsetvl_cfg(VSEW16, VLMUL1, VMA_A, VTA_A, CBSEQ, VPACK_OFF);
    asm volatile("vsetvl a0, %0, %1" ::"r"(vl), "r"(cfg_load));
    asm volatile("vle16.v v0, (%0);" ::"r"(buf_val));
    asm volatile("vle16.v v8, (%0);" ::"r"(buf_idx));

    //
    int n_lut_per_run;
    for(int cb=start_cb; cb<=end_cb; cb++) {
        for(int vmul=start_vmul; vmul<=end_vmul; vmul++) {
            n_lut_per_run = cb==0 ? 10: 10; // Reduce sim time for slow seq lookup

            cfg_exec = get_vsetvl_cfg(VSEW16, VLMUL1, VMA_A, VTA_A, CBSEQ+cb, lut_pack);
            cfg_agg = get_vsetvl_cfg(VSEW16, vmul, VMA_A, VTA_A, CBSEQ+cb, lut_pack);

            // TODO: First clear REG before execution

            start_timer();

            // Case 1: sequential loading
            // for(int j=0; j<n_lut_per_run; j++) {
            //     asm volatile("vsetvl a0, %0, %1" ::"r"(vl), "r"(cfg_exec));
            //     asm volatile("vle16.v v8, (%0);" ::"r"(buf_idx));
            //     asm volatile("vrgatherei16.vv v16, v0, v8;"); 

            //     asm volatile("vsetvl a0, %0, %1" ::"r"(vl), "r"(cfg_agg));
            //     asm volatile("vadd.vv v24, v16, v24;"); 
            // }

            // Case 2: pipelined loading
            for(int j=0; j<n_lut_per_run; j++) {
                asm volatile("vsetvl a0, %0, %1" ::"r"(vl), "r"(cfg_exec));

                asm volatile("vle16.v v1, (%0);" ::"r"(buf_idx));
                asm volatile("vrgatherei16.vv v8, v0, v1;"); 

                asm volatile("vle16.v v2, (%0);" ::"r"(buf_idx2));
                asm volatile("vrgatherei16.vv v16, v0, v2;"); 

                asm volatile("vsetvl a0, %0, %1" ::"r"(vl), "r"(cfg_agg));
                asm volatile("vadd.vv v24, v24, v8;"); 
                asm volatile("vadd.vv v24, v24, v16;"); 
            }

            stop_timer();

            uint64_t runtime = get_timer();
            printf("\nThe execution took %d cycles.\n", runtime);
            int lut_per_elem = lut_pack? 16/(cb+1) : 1;
            double tp_per_cycle = (double) n_lut_per_run * vl * lut_per_elem / (double)runtime;
            double tp_giga_per_sec = tp_per_cycle * 1.25;
            printf("Throughput: %.2f luts/cycle for CB%d and VLMUL%d with %d luts/elem\n", tp_per_cycle, 2<<cb, 1<<vmul, lut_per_elem);
            printf("Throughput: %.2f G luts/sec for CB%d and VLMUL%d\n", tp_giga_per_sec, 2<<cb, 1<<vmul);
        }
    }
    

    #ifdef SPIKE
    printf("\n\n\t");
    for(int i=0; i<vl; i++){
        printf("%02x  ", i);
    }
    printf("\n\nValue\t");
    for(int i=0; i<vl; i++){
        printf("%02x  ", buf_val[i]);
    }
    printf("\n\nIdx\t");
    for(int i=0; i<vl; i++){
        printf("%02x  ", buf_idx[i]);
    }
    #endif

    // asm volatile("vsetvl a0, %0, %1" ::"r"(vl), "r"(cfg_load));
    asm volatile("vse16.v v24, (%0);" ::"r"(buf_res));
    printf("\n\nRes:\t");
    for(int i=0; i<5; i++){
        printf("%d ", buf_res[i]);
    }

    //////////////////////////////////////////////////////////////
    // uint8_t buf_val_8[N];
    // uint32_t buf_val_32[N];
    // vl = 32;
    // for(uint16_t i=0; i<vl; i++){
    //     buf_val_8[i] = i;
    //     buf_val[i] = i;
    //     buf_val_32[i] = i;
    // }

    //////////////////////////////////////////////////////////////
    // Case 1: Load 8-bit data, store 16/32-bit data
    // asm volatile("vsetvli zero, %0, e8, m1, ta, ma" ::"r"(vl));
    // asm volatile("vle8.v v0, (%0);" ::"r"(buf_val_8));

    // asm volatile("vse32.v v0, (%0);" ::"r"(buf_val_32));
    // asm volatile("vsetvli zero, %0, e16, m1, ta, ma" ::"r"(vl/2));
    // asm volatile("vse16.v v0, (%0);" ::"r"(buf_val));

    // for(int i=0; i<vl/2; i++){
    //     printf("\n%04x @ %d", buf_val[i], i);
    // }

    // asm volatile("vsetvli zero, %0, e32, m1, ta, ma" ::"r"(vl/4));
    // asm volatile("vse32.v v0, (%0);" ::"r"(buf_val_32));

    // for(int i=0; i<vl/4; i++){
    //     printf("\n%08x @ %d", buf_val_32[i], i);
    // }
    //////////////////////////////////////////////////////////////

    //////////////////////////////////////////////////////////////
    // Case 2: Load 32-bit data, store 16/8-bit data
    // asm volatile("vsetvli zero, %0, e32, m1, ta, ma" ::"r"(vl/4));
    // asm volatile("vle32.v v0, (%0);" ::"r"(buf_val_32));

    // for(int i=0; i<vl/4; i++){
    //     printf("\n%08x @ %d", buf_val_32[i], i);
    // }

    // asm volatile("vsetvli zero, %0, e16, m1, ta, ma" ::"r"(vl/2));
    // asm volatile("vse16.v v0, (%0);" ::"r"(buf_val));

    // for(int i=0; i<vl/2; i++){
    //     printf("\n%04x @ %d", buf_val[i], i);
    // }

    // asm volatile("vsetvli zero, %0, e8, m1, ta, ma" ::"r"(vl));
    // asm volatile("vse8.v v0, (%0);" ::"r"(buf_val_8));

    // for(int i=0; i<vl; i++){
    //     printf("\n%02x @ %d", buf_val_8[i], i);
    // }
    //////////////////////////////////////////////////////////////

    return 0;
}

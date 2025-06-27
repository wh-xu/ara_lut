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
 * DESCRIPTION: Bench RVV's vrgatherei16.vv instruction
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

#define N 4096

int main(){
    int n_runs = 1;
    int vl = 32;

    // Init test data
    uint16_t buf_idx[N];
    int16_t buf_val[N], buf_res[N];
    
    static uint32_t seed = 12345;
    for(uint16_t i=0; i<N; i++){
        // Simple linear congruential generator for random values
        seed = seed * 1103515245 + 12345;
        buf_idx[i] = ((seed >> 16) & 0xFFFF) % vl;
        // buf_idx[i] = vl - i-1;
        buf_val[i] = i+1;
    }

    start_timer();

    // Set vector length
    // size_t avl = __riscv_vsetvl_e16m1(vl);
    asm volatile("vsetvli zero, %0, e16, m1, ta, ma" ::"r"(vl));

    // load/store
    asm volatile("vle16.v v4, (%0);" ::"r"(buf_idx));
    asm volatile("vle16.v v8, (%0);" ::"r"(buf_val));
    
    for(int i=0; i<n_runs; i++){
        asm volatile("vrgatherei16.vv v10, v8, v4;"); 
        // asm volatile("vrgather.vv v10, v8, v5;"); 
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

    asm volatile("vse16.v v10, (%0);" ::"r"(buf_res));
    printf("\n\nRes\t");
    for(int i=0; i<vl; i++){
        printf("%02x  ", buf_res[i]);
    }
    #endif

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

    stop_timer();

    uint64_t runtime = get_timer();
    printf("\n\nThe execution took %d cycles.\n", runtime);

    return 0;
}

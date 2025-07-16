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

#define N 4096

enum vlmul{
    VLMUL1_8 = 0x5,
    VLMUL1_4 = 0x6,
    VLMUL1_2 = 0x7,
    VLMUL1 = 0x0,
    VLMUL2 = 0x1,
    VLMUL4 = 0x2,
    VLMUL8 = 0x3,
};

enum vsew{
    VSEW8 = 0x0,
    VSEW16 = 0x1,
    VSEW32 = 0x2,
    VSEW64 = 0x3,
};

enum vma{
    VMA_U = 0x0,
    VMA_A = 0x1,
};

enum vta{
    VTA_U = 0x0,
    VTA_A = 0x1,
};

enum vlut_type{
    CBSEQ   = 0x0,
    CB16    = 0x1,
    CB32    = 0x2,
    CB64    = 0x3,
    CB128   = 0x4,
    CB256   = 0x5,
};

enum vreuse{
    VREUSE_OFF = 0x0,
    VREUSE_ON  = 0x1,
};

uint32_t get_vsetvl_cfg(uint8_t vsew, uint8_t vlmul, uint8_t vma, uint8_t vta, uint8_t vlut, uint8_t vreuse){
    uint32_t cfg = 0;
    cfg |= vlmul;
    cfg |= (vsew << 3);
    cfg |= (vta << 6);
    cfg |= (vma << 7);
    cfg |= (vlut << 8);
    cfg |= (vreuse << 11);
    return cfg;
}

int main(){
    int n_runs = 5;
    const uint16_t vl = 256;

    // Init test data
    uint16_t buf_idx[vl];
    int16_t buf_val[vl], buf_res[vl];
    
    static uint32_t seed = 12345;
    for(uint16_t i=0; i<vl; i++){
        // Simple linear congruential generator for random values
        // seed = seed * 1103515245 + 12345;
        // buf_idx[i] = ((seed >> 16) & 0xFFFF) % 16;
        buf_idx[i] = (i+2) % 16;
        buf_val[i] = i+1;
    }

    // Set vector length
    uint32_t cfg;
    // cfg = get_vsetvl_cfg(VSEW16, VLMUL1, VMA_A, VTA_A, CBSEQ, VREUSE_OFF);
    // cfg = get_vsetvl_cfg(VSEW16, VLMUL1, VMA_A, VTA_A, CB16, VREUSE_OFF);
    cfg = get_vsetvl_cfg(VSEW16, VLMUL1, VMA_A, VTA_A, CB16, VREUSE_ON);
    asm volatile("vsetvl a0, %0, %1" ::"r"(vl), "r"(cfg));

    // load/store
    asm volatile("vle16.v v4, (%0);" ::"r"(buf_idx));
    asm volatile("vle16.v v8, (%0);" ::"r"(buf_val));

    start_timer();

    for(int i=0; i<n_runs; i++){
        asm volatile("vle16.v v8, (%0);" ::"r"(buf_val));
        asm volatile("vrgatherei16.vv v10, v8, v4;"); 
    }

    stop_timer();

    uint64_t runtime = get_timer();
    double throughput = (double)n_runs * vl / (double)runtime;
    printf("\n\nThe execution took %d cycles.\n", runtime);
    printf("Throughput: %.2f elements/cycle\n", throughput);
    

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

    asm volatile("vse16.v v10, (%0);" ::"r"(buf_res));
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

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

uint32_t get_vsetvl_cfg(uint8_t vsew, uint8_t vlmul, uint8_t vma, uint8_t vta, uint8_t vlut){
    uint32_t cfg = 0;
    cfg |= vlmul;
    cfg |= (vsew << 3);
    cfg |= (vta << 6);
    cfg |= (vma << 7);
    cfg |= (vlut << 8);
    return cfg;
}

int main(){
    int avl = 256;

    //
    uint32_t cfg = get_vsetvl_cfg(VSEW16, VLMUL1, VMA_U, VTA_U, CB128);
    printf("cfg: %x\n", cfg);
    asm volatile("vsetvl a0, %0, %1" ::"r"(avl), "r"(cfg));
    for(int i=0; i<1; i++){
        asm volatile("vrgatherei16.vv v10, v8, v4;"); 
    }

    //
    cfg = get_vsetvl_cfg(VSEW16, VLMUL1, VMA_U, VTA_U, CB32);
    printf("cfg: %x\n", cfg);
    asm volatile("vsetvl a0, %0, %1" ::"r"(avl), "r"(cfg));
    asm volatile("vrgatherei16.vv v21, v17, v13;"); 

    return 0;
}
# Copyright 2020 ETH Zurich and University of Bologna.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Author: Matheus Cavalcante, ETH Zurich

SHELL = /usr/bin/env bash
ROOT_DIR := $(patsubst %/,%, $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
ARA_DIR := $(shell git rev-parse --show-toplevel 2>/dev/null || echo $$MEMPOOL_DIR)

INSTALL_PREFIX          ?= install
INSTALL_DIR             ?= ${ROOT_DIR}/${INSTALL_PREFIX}
GCC_INSTALL_DIR         ?= ${INSTALL_DIR}/riscv-gcc
LLVM_INSTALL_DIR        ?= ${INSTALL_DIR}/riscv-llvm
ISA_SIM_INSTALL_DIR     ?= ${INSTALL_DIR}/riscv-isa-sim
VERIL_INSTALL_DIR       ?= ${INSTALL_DIR}/verilator
VERIL_VERSION           ?= v5.012

CMAKE ?= cmake

# CC and CXX are Makefile default variables that are always defined in a Makefile. Hence, overwrite
# the variable if it is only defined by the Makefile (its origin in the Makefile's default).
ifeq ($(origin CC),default)
CC     = gcc
endif
ifeq ($(origin CXX),default)
CXX    = g++
endif

# We need a recent LLVM to compile Verilator
CLANG_CC  ?= clang
CLANG_CXX ?= clang++
ifneq (${CLANG_PATH},)
	CLANG_CXXFLAGS := "-nostdinc++ -isystem $(CLANG_PATH)/include/c++/v1"
	CLANG_LDFLAGS  := "-L $(CLANG_PATH)/lib -Wl,-rpath,$(CLANG_PATH)/lib -lc++ -nostdlib++"
else
	CLANG_CXXFLAGS := ""
	CLANG_LDFLAGS  := ""
endif

# Submodule update - Big modules are not automatically updated by default
# and require a manual call.
git-submodules:
	git submodule update --init --recursive
	git submodule update --init --recursive --checkout -- $(ROOT_DIR)/toolchain/newlib
	git submodule update --init --recursive --checkout -- $(ROOT_DIR)/toolchain/riscv-llvm

# Default target
.PHONY: git-submodules
all: toolchains riscv-isa-sim verilator

# GCC and LLVM Toolchains
.PHONY: toolchains toolchain-llvm toolchain-llvm-main toolchain-llvm-newlib toolchain-llvm-rt
toolchains: toolchain-llvm

toolchain-llvm: toolchain-llvm-main toolchain-llvm-newlib toolchain-llvm-rt

toolchain-llvm-main: git-submodules Makefile
	mkdir -p $(LLVM_INSTALL_DIR)
	cd $(ROOT_DIR)/toolchain/riscv-llvm && rm -rf build && mkdir -p build && cd build && \
	$(CMAKE) -G Ninja  \
	-DCMAKE_INSTALL_PREFIX=$(LLVM_INSTALL_DIR) \
	-DLLVM_ENABLE_PROJECTS="clang;lld" \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_C_COMPILER=$(CC) \
	-DCMAKE_CXX_COMPILER=$(CXX) \
	-DLLVM_DEFAULT_TARGET_TRIPLE=riscv64-unknown-elf \
	-DLLVM_TARGETS_TO_BUILD="RISCV" \
	../llvm
	cd $(ROOT_DIR)/toolchain/riscv-llvm && \
	$(CMAKE) --build build --target install

toolchain-llvm-newlib: git-submodules Makefile toolchain-llvm-main
	cd ${ROOT_DIR}/toolchain/newlib && rm -rf build && mkdir -p build && cd build && \
	../configure --prefix=${LLVM_INSTALL_DIR} \
	--target=riscv64-unknown-elf \
	CC_FOR_TARGET="${LLVM_INSTALL_DIR}/bin/clang -march=rv64gc -mabi=lp64d -mno-relax -mcmodel=medany -Wno-error-implicit-function-declaration -Wno-error=int-conversion" \
	AS_FOR_TARGET=${LLVM_INSTALL_DIR}/bin/llvm-as \
	AR_FOR_TARGET=${LLVM_INSTALL_DIR}/bin/llvm-ar \
	LD_FOR_TARGET=${LLVM_INSTALL_DIR}/bin/llvm-ld \
	RANLIB_FOR_TARGET=${LLVM_INSTALL_DIR}/bin/llvm-ranlib && \
	make && \
	make install

toolchain-llvm-rt: git-submodules Makefile toolchain-llvm-main toolchain-llvm-newlib
	cd $(ROOT_DIR)/toolchain/riscv-llvm/compiler-rt && rm -rf build && mkdir -p build && cd build && \
	$(CMAKE) $(ROOT_DIR)/toolchain/riscv-llvm/compiler-rt -G Ninja \
	-DCMAKE_INSTALL_PREFIX=$(LLVM_INSTALL_DIR) \
	-DCMAKE_C_COMPILER_TARGET="riscv64-unknown-elf" \
	-DCMAKE_ASM_COMPILER_TARGET="riscv64-unknown-elf" \
	-DCOMPILER_RT_DEFAULT_TARGET_ONLY=ON \
	-DCOMPILER_RT_BAREMETAL_BUILD=ON \
	-DCOMPILER_RT_BUILD_BUILTINS=ON \
	-DCOMPILER_RT_BUILD_LIBFUZZER=OFF \
	-DCOMPILER_RT_BUILD_MEMPROF=OFF \
	-DCOMPILER_RT_BUILD_PROFILE=OFF \
	-DCOMPILER_RT_BUILD_SANITIZERS=OFF \
	-DCOMPILER_RT_BUILD_XRAY=OFF \
	-DCOMPILER_RT_BUILD_CTX_PROFILE=OFF \
	-DCMAKE_C_COMPILER_WORKS=1 \
	-DCMAKE_CXX_COMPILER_WORKS=1 \
	-DCMAKE_SIZEOF_VOID_P=4 \
	-DCMAKE_C_COMPILER="$(LLVM_INSTALL_DIR)/bin/clang" \
	-DCMAKE_C_FLAGS="-march=rv64gc -mabi=lp64d -mno-relax -mcmodel=medany" \
	-DCMAKE_ASM_FLAGS="-march=rv64gc -mabi=lp64d -mno-relax -mcmodel=medany" \
	-DCMAKE_AR=$(LLVM_INSTALL_DIR)/bin/llvm-ar \
	-DCMAKE_NM=$(LLVM_INSTALL_DIR)/bin/llvm-nm \
	-DCMAKE_RANLIB=$(LLVM_INSTALL_DIR)/bin/llvm-ranlib \
	-DLLVM_CONFIG_PATH=$(LLVM_INSTALL_DIR)/bin/llvm-config
	cd $(ROOT_DIR)/toolchain/riscv-llvm/compiler-rt && \
	$(CMAKE) --build build --target install && \
	ln -s $(LLVM_INSTALL_DIR)/lib/linux $(LLVM_INSTALL_DIR)/lib/clang/20/lib

# Spike
.PHONY: riscv-isa-sim riscv-isa-sim-mod
riscv-isa-sim: ${ISA_SIM_INSTALL_DIR} 

${ISA_SIM_INSTALL_DIR}: Makefile
	# There are linking issues with the standard libraries when using newer CC/CXX versions to compile Spike.
	# Therefore, here we resort to older versions of the compilers.
	# If there are problems with dynamic linking, use:
	# make riscv-isa-sim LDFLAGS="-static-libstdc++"
	# Spike was compiled successfully using gcc and g++ version 7.2.0.
	cd toolchain/riscv-isa-sim && rm -rf build && mkdir -p build && cd build; \
	../configure --prefix=$(ISA_SIM_INSTALL_DIR) && \
	make -j32 && make install

# Verilator
.PHONY: verilator
verilator: ${VERIL_INSTALL_DIR}

${VERIL_INSTALL_DIR}: Makefile
	# Checkout the right version
	cd $(CURDIR)/toolchain/verilator && git reset --hard && git fetch && git checkout ${VERIL_VERSION}
	# Compile verilator
	cd $(CURDIR)/toolchain/verilator && git clean -xfdf && autoconf && \
	CC=$(CLANG_CC) CXX=$(CLANG_CXX) CXXFLAGS=$(CLANG_CXXFLAGS) LDFLAGS=$(CLANG_LDFLAGS) \
		./configure --prefix=$(VERIL_INSTALL_DIR) && make -j8 && make install
	# A patch to fix path error during simulation compilation
	ln -s $(VERIL_INSTALL_DIR)/bin/verilator_bin $(VERIL_INSTALL_DIR)/share/verilator/bin

# RISC-V Tests
riscv_tests:
	make -C apps -j4 riscv_tests && \
	make -C hardware riscv_tests_simc

# Initialize RVV-bench benchmark suite
rvv-bench:
	git submodule update --init --recursive --checkout -- $(ROOT_DIR)/apps/rvv-bench \
	&& cd apps \
	&& cp rvv-bench/nolibc.h . \
	&& rm -r rvv \
	&& mkdir rvv \
	&& cp rvv-bench/instructions/rvv/gen.S . \
	&& cp rvv-bench/instructions/rvv/config.h rvv-bench/instructions/rvv/main.c rvv \
	&& sed -e '2a#define CUSTOM_HOST 1' -e '2a#include "printf.h"' -e '2a#include <string.h>' -i nolibc.h \
	&& sed 's/main/nolibc_main/g;s/_start/main/g;s/nolibc_main();/\0\n#define main nolibc_main/g' -i nolibc.h \
	&& sed 's/\(memwrite(.*\)}/\1printf("%.*s",len,ptr);}/g' -i nolibc.h \
	&& sed 's/WARMUP.*$$/WARMUP 1/g;s/UNROLL.*$$/UNROLL 4/g;s/LOOP.*$$/LOOP 8/1;s/RUNS.*$$/RUNS 1/g' -i rvv/config.h \
	&& sed 's/\.\.\/nolibc/nolibc/g' -i rvv/main.c \
	&& m4 gen.S > rvv/gen.S

# Helper targets
.PHONY: clean

clean:
	rm -rf $(INSTALL_DIR)

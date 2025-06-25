#!/usr/bin/env python3
# Copyright 2022 ETH Zurich and University of Bologna.
#
# SPDX-License-Identifier: Apache-2.0
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

# Author: Matteo Perotti

# C = AB with A=[MxN], B=[NxP], C=[MxP]
# arg1, arg2, arg3: M, N, P

import random as rand
import numpy as np
import sys

np.random.seed(0)

def emit(name, array, alignment='8'):
  print(".global %s" % name)
  print(".balign " + alignment)
  print("%s:" % name)
  bs = array.tobytes()
  for i in range(0, len(bs), 4):
    s = ""
    for n in range(4):
      s += "%02x" % bs[i+3-n]
    print("    .word 0x%s" % s)

def get_ground_truth(cb, cw, query, verbose=False):
  # Compute PQ ADT
  n_query, n_dim = query.shape
  k_cluster, n_dim_cb = cb.shape
  n_cw, n_subvec = cw.shape
  assert n_dim_cb == n_dim

  adt = np.zeros((k_cluster, n_subvec), dtype=np.int16)
  dim_sub = n_dim//n_subvec
  for i in range(k_cluster):
    for j in range(n_subvec):
      for k in range(dim_sub):
        adt[i, j] += cb[i, j*dim_sub+k] * query[0, j*dim_sub+k]
  
  # Compute PQ LUT
  dist = np.zeros((n_cw, 1), dtype=np.int16)
  for i in range(n_cw):
    for j in range(n_subvec):
      dist[i] += adt[cw[i, j], j]

  if verbose:
    print(f"cb: {cb}")
    print(f"query: {query}")
    print(f"adt: {adt}")
    print(f"cw: {cw}")
    print(f"dist: {dist}")
    exit()
  return adt, dist

############
## SCRIPT ##
############

if len(sys.argv) == 7:
  k_cluster = int(sys.argv[1])
  n_dim = int(sys.argv[2])
  n_subvec = int(sys.argv[3])
  n_cw = int(sys.argv[4])
  n_query = int(sys.argv[5])
  verbose = int(sys.argv[6])

  n_bits = np.log2(k_cluster)
  assert n_bits <= 8
else:
  print("k_cluster: number of clusters")
  print("n_dim: dimension of each vector")
  print("n_subvec: number of subvectors")
  print("n_cw: number of codewords")
  print("n_query: number of query vectors")
  sys.exit()

dtype_cb = np.int16
dtype_cw = np.uint8

# Matrices and results
codebook = np.random.randint(-64, 64, size=(k_cluster, n_dim), dtype=dtype_cb)
codeword = np.random.randint(0, 2**n_bits, size=(n_cw, n_subvec), dtype=dtype_cw)
query = np.random.randint(-64, 64, size=(n_query, n_dim), dtype=dtype_cb)

# Ground truth result 
gt_adt, gt_dist = get_ground_truth(codebook, codeword, query, verbose)

# Create the file
print(".section .data,\"aw\",@progbits")
emit("k_cluster", np.array(k_cluster, dtype=np.uint64), 'NR_LANES*4')
emit("n_dim", np.array(n_dim, dtype=np.uint64), 'NR_LANES*4')
emit("n_subvec", np.array(n_subvec, dtype=np.uint64), 'NR_LANES*4')
emit("n_cw", np.array(n_cw, dtype=np.uint64), 'NR_LANES*4')
emit("n_query", np.array(n_query, dtype=np.uint64), 'NR_LANES*4')


emit("codebook", codebook)
emit("codeword", codeword)

emit("query", query)

emit("gt_adt", gt_adt)
emit("gt_dist", gt_dist)



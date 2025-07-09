#!/bin/bash

# Generate data
k_cluster=256
n_subvec=1
n_dim=64
n_cw=16
n_query=1

APP_PATH=pq
# python $APP_PATH/script_gen/gen_data.py $k_cluster $n_dim $n_subvec $n_cw $n_query 0 > $APP_PATH/data.S
# python $APP_PATH/script_gen/gen_data.py $k_cluster $n_dim $n_subvec $n_cw $n_query 1 > $APP_PATH/debug_output.log

# Compile and Run
# make spike-run-pq

make bin/pq
../hardware/build/verilator/Vara_tb_verilator -l ram,/home/whxu/code/RVV-LUT-VQ/ara_lut/apps/bin/pq,elf
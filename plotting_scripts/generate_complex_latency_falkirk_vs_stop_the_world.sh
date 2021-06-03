#!/bin/bash
# $1 path to falkirk-experiments directory

python3 plot_falkirk_vs_stop_the_world.py --falkirk_input_latency_file_path=$1/results/complex_falkirk_25_machines_512_batchesize_10000_keys_0_failure/inputLatency.021.log --falkirk_fast_latency_file_path=$1/results/complex_falkirk_25_machines_512_batchesize_10000_keys_0_failure/fastPipe.021.log --stw_input_latency_file_path=$1/results/complex_stw_25_machines_512_batchesize_10000_keys_0_failure/inputLatency.021.log --stw_fast_latency_file_path=$1/results/complex_stw_25_machines_512_batchesize_10000_keys_0_failure/fastPipe.021.log --start_time=0 --end_time=300000 --paper_mode

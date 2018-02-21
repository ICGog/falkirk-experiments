#!/bin/bash
# $1 path to falkirk-experiments directory

################################################################################
# Falkirk vs stop-the-world
################################################################################

python plot_falkirk_vs_stop_the_world.py --stw_input_latency_file_path=$1/results/complex_stw_25_machines_512_batchesize_10000_keys_0_failure/inputLatency.021.log --stw_fast_latency_file_path=$1/results/complex_stw_25_machines_512_batchesize_10000_keys_0_failure/fastPipe.021.log --start_time=0 --end_time=300000 --presentation_mode --file_format=png
mv complex_latency_falkirk_vs_stw.png complex_latency_falkirk_vs_stw_1.png

python plot_falkirk_vs_stop_the_world.py --falkirk_input_latency_file_path=$1/results/complex_falkirk_25_machines_512_batchesize_10000_keys_0_failure/inputLatency.021.log --falkirk_fast_latency_file_path=$1/results/complex_falkirk_25_machines_512_batchesize_10000_keys_0_failure/fastPipe.021.log --stw_input_latency_file_path=$1/results/complex_stw_25_machines_512_batchesize_10000_keys_0_failure/inputLatency.021.log --stw_fast_latency_file_path=$1/results/complex_stw_25_machines_512_batchesize_10000_keys_0_failure/fastPipe.021.log --start_time=0 --end_time=300000 --presentation_mode --file_format=png
mv complex_latency_falkirk_vs_stw.png complex_latency_falkirk_vs_stw_2.png

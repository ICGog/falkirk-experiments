#!/bin/bash
# $1 path to falkirk-experiments directory

################################################################################
# Complex worklfow timeline
################################################################################

python plot_complex_latency_timeline.py --input_latency_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/inputLatency.021.log --fast_latency_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/fastPipe.021.log --controller_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/controller.000.log --start_time=245000 --end_time=272300 --presentation_mode --file_format=png --workers_paused=false --rollback_computed=false --processors_recovered=false --plot_until_end=false
mv complex_latency_timeline.png complex_latency_timeline_1.png

python plot_complex_latency_timeline.py --input_latency_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/inputLatency.021.log --fast_latency_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/fastPipe.021.log --controller_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/controller.000.log --start_time=245000 --end_time=272300 --presentation_mode --file_format=png --workers_paused=true --rollback_computed=false --processors_recovered=false --plot_until_end=false
mv complex_latency_timeline.png complex_latency_timeline_2.png

python plot_complex_latency_timeline.py --input_latency_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/inputLatency.021.log --fast_latency_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/fastPipe.021.log --controller_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/controller.000.log --start_time=245000 --end_time=272300 --presentation_mode --file_format=png --workers_paused=true --rollback_computed=true --processors_recovered=false --plot_until_end=false
mv complex_latency_timeline.png complex_latency_timeline_3.png

python plot_complex_latency_timeline.py --input_latency_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/inputLatency.021.log --fast_latency_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/fastPipe.021.log --controller_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/controller.000.log --start_time=245000 --end_time=272300 --presentation_mode --file_format=png --workers_paused=true --rollback_computed=true --processors_recovered=true --plot_until_end=false
mv complex_latency_timeline.png complex_latency_timeline_4.png

python plot_complex_latency_timeline.py --input_latency_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/inputLatency.021.log --fast_latency_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/fastPipe.021.log --controller_file_path=$1/results/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/controller.000.log --start_time=245000 --end_time=272300 --presentation_mode --file_format=png --workers_paused=true --rollback_computed=true --processors_recovered=true --plot_until_end=true
mv complex_latency_timeline.png complex_latency_timeline_5.png


################################################################################
# Falkirk vs stop-the-world
################################################################################

python plot_falkirk_vs_stop_the_world.py --stw_input_latency_file_path=$1/results/complex_stw_25_machines_512_batchesize_10000_keys_0_failure/inputLatency.021.log --stw_fast_latency_file_path=$1/results/complex_stw_25_machines_512_batchesize_10000_keys_0_failure/fastPipe.021.log --start_time=0 --end_time=300000 --presentation_mode --file_format=png
mv complex_latency_falkirk_vs_stw.png complex_latency_falkirk_vs_stw_1.png

python plot_falkirk_vs_stop_the_world.py --falkirk_input_latency_file_path=$1/results/complex_falkirk_25_machines_512_batchesize_10000_keys_0_failure/inputLatency.021.log --falkirk_fast_latency_file_path=$1/results/complex_falkirk_25_machines_512_batchesize_10000_keys_0_failure/fastPipe.021.log --stw_input_latency_file_path=$1/results/complex_stw_25_machines_512_batchesize_10000_keys_0_failure/inputLatency.021.log --stw_fast_latency_file_path=$1/results/complex_stw_25_machines_512_batchesize_10000_keys_0_failure/fastPipe.021.log --start_time=0 --end_time=300000 --presentation_mode --file_format=png
mv complex_latency_falkirk_vs_stw.png complex_latency_falkirk_vs_stw_2.png

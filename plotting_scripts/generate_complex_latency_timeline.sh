#!/bin/bash
python plot_complex_latency_timeline.py --input_latency_file_path=/mnt/data/icg27/falkirk/falkirk-experiments/plotting_scripts/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/inputLatency.021.log --fast_latency_file_path=/mnt/data/icg27/falkirk/falkirk-experiments/plotting_scripts/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/fastPipe.021.log --controller_file_path=/mnt/data/icg27/falkirk/falkirk-experiments/plotting_scripts/complex_falkirk_25_machines_5120_batchesize_10000_keys_1_failure_3_threads_run3/controller.000.log --start_time=245000 --end_time=272300 --paper_mode
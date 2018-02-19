#!/bin/bash
python plot_cc_selective_speedup_lines.py --runtime_file_path=/home/icg27/Dropbox/phd/falkirk-experiments/results/cc_100000000_nodes_75000000_edges_100_epochs_50_changes.out  --num_procs="5,9,13,17,21,25" --paper_mode
#python plot_cc_selective_speedup_lines.py --runtime_file_path=/home/icg27/Dropbox/phd/falkirk-experiments/results/cc_100000000_nodes_75000000_edges_50_epochs_1000_changes/selective_srs.out  --num_procs="5,9,13,17,21,25" --paper_mode

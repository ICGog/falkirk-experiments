#!/bin/bash
python plot_cc_runtime_lines.py --runtime_file_path=/mnt/data/icg27/falkirk/cc_100000000_nodes_75000000_edges_50_epochs_1000_changes/test.out  --num_procs="5,9,13,17,21,25" --paper_mode

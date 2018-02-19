#!/bin/bash
for i in `ls cc_100000000_nodes_75000000_edges_50_epochs_1000_changes_*incremental*` ; do output0=`grep "Caching output 0" $i  | cut -d" " -f1`; output50=`grep "Caching output 50" $i  | cut -d" " -f1` ; echo $i $output0 $((output50-output0)) ; done

#output0=`grep "Caching output 0" cc_100000000_nodes_75000000_edges_50_epochs_1000_changes_13_procs_1_threads_caching_output_eagerly2.log | cut -d" " -f1`

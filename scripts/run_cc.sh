#!/bin/bash

################################################################################
# Checkpoint eagerly with FTManager
################################################################################

parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_25_procs_1_threads_eagerly1.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_21_procs_1_threads_eagerly1.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_17_procs_1_threads_eagerly1.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_13_procs_1_threads_eagerly1.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_9_procs_1_threads_eagerly1.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_5_procs_1_threads_eagerly1.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "





parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_25_procs_1_threads_eagerly2.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_21_procs_1_threads_eagerly2.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_17_procs_1_threads_eagerly2.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_13_procs_1_threads_eagerly2.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_9_procs_1_threads_eagerly2.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_5_procs_1_threads_eagerly2.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "



parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_25_procs_1_threads_eagerly3.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_21_procs_1_threads_eagerly3.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_17_procs_1_threads_eagerly3.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_13_procs_1_threads_eagerly3.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_9_procs_1_threads_eagerly3.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_5_procs_1_threads_eagerly3.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "




parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_25_procs_1_threads_eagerly4.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_21_procs_1_threads_eagerly4.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_17_procs_1_threads_eagerly4.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_13_procs_1_threads_eagerly4.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_9_procs_1_threads_eagerly4.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_5_procs_1_threads_eagerly4.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "




parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_25_procs_1_threads_eagerly5.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_21_procs_1_threads_eagerly5.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_17_procs_1_threads_eagerly5.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_13_procs_1_threads_eagerly5.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_9_procs_1_threads_eagerly5.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -checkpointeagerly -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_5_procs_1_threads_eagerly5.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

################################################################################
# Checkpoint each pointstamp
################################################################################

# # parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 1000 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_1000_changes_25_procs_1_threads_checkpointatbatch_length_1_incremental4.log'

# # parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# # parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 1000 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_1000_changes_21_procs_1_threads_checkpointatbatch_length_1_incremental4.log'

# # parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# # parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 1000 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_1000_changes_17_procs_1_threads_checkpointatbatch_length_1_incremental4.log'

# # parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# # parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 1000 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_1000_changes_13_procs_1_threads_checkpointatbatch_length_1_incremental4.log'

# # parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# # parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 1000 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_1000_changes_9_procs_1_threads_checkpointatbatch_length_1_incremental4.log'

# # parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# # parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 1000 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_1000_changes_5_procs_1_threads_checkpointatbatch_length_1_incremental4.log'

# # parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "


################################################################################
# No fault tolerance
################################################################################

# parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 1000 -nofaulttolerance -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_1000_changes_25_procs_1_threads_noft5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 1000 -nofaulttolerance -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_1000_changes_21_procs_1_threads_noft5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 1000 -nofaulttolerance -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_1000_changes_17_procs_1_threads_noft5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 1000 -nofaulttolerance -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_1000_changes_13_procs_1_threads_noft5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 1000 -nofaulttolerance -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_1000_changes_9_procs_1_threads_noft5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 1000 -nofaulttolerance -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_1000_changes_5_procs_1_threads_noft5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "




################################################################################
# Checkpoint each epoch 100 epochs 50 changes
################################################################################

# parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_25_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental2.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_21_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental2.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_17_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental2.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_13_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental2.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_9_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental2.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_5_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental2.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "






# parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_25_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental3.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_21_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental3.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_17_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental3.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_13_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental3.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_9_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental3.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_5_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental3.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "






# parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_25_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental4.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_21_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental4.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_17_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental4.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_13_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental4.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_9_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental4.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_5_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental4.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "



# parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_25_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_21_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_17_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_13_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_9_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_5_procs_1_threads_checkpointatbatch_length_1_sync_after_epoch_0_incremental5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "


################################################################################
# Sync each epoch 100 epochs 50 changes
################################################################################

# parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_25_procs_1_threads_checkpointatbatch_length_1_sync1.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_21_procs_1_threads_checkpointatbatch_length_1_sync1.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_17_procs_1_threads_checkpointatbatch_length_1_sync1.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_13_procs_1_threads_checkpointatbatch_length_1_sync1.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_9_procs_1_threads_checkpointatbatch_length_1_sync1.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_5_procs_1_threads_checkpointatbatch_length_1_sync1.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "







# parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_25_procs_1_threads_checkpointatbatch_length_1_sync2.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_21_procs_1_threads_checkpointatbatch_length_1_sync2.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_17_procs_1_threads_checkpointatbatch_length_1_sync2.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_13_procs_1_threads_checkpointatbatch_length_1_sync2.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_9_procs_1_threads_checkpointatbatch_length_1_sync2.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_5_procs_1_threads_checkpointatbatch_length_1_sync2.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "






# parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_25_procs_1_threads_checkpointatbatch_length_1_sync3.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_21_procs_1_threads_checkpointatbatch_length_1_sync3.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_17_procs_1_threads_checkpointatbatch_length_1_sync3.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_13_procs_1_threads_checkpointatbatch_length_1_sync3.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_9_procs_1_threads_checkpointatbatch_length_1_sync3.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_5_procs_1_threads_checkpointatbatch_length_1_sync3.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "





# parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_25_procs_1_threads_checkpointatbatch_length_1_sync4.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_21_procs_1_threads_checkpointatbatch_length_1_sync4.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_17_procs_1_threads_checkpointatbatch_length_1_sync4.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_13_procs_1_threads_checkpointatbatch_length_1_sync4.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_9_procs_1_threads_checkpointatbatch_length_1_sync4.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_5_procs_1_threads_checkpointatbatch_length_1_sync4.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "





# parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_25_procs_1_threads_checkpointatbatch_length_1_sync5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_21_procs_1_threads_checkpointatbatch_length_1_sync5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_17_procs_1_threads_checkpointatbatch_length_1_sync5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_13_procs_1_threads_checkpointatbatch_length_1_sync5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_9_procs_1_threads_checkpointatbatch_length_1_sync5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 100 -changesperepoch 50 -synceachepoch -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_100_epochs_50_changes_5_procs_1_threads_checkpointatbatch_length_1_sync5.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "


################################################################################
# No fault tolerance 50 epochs 10000 changes
################################################################################

# parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 10000 -nofaulttolerance -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_10000_changes_25_procs_1_threads_noft1.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 10000 -nofaulttolerance -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_10000_changes_21_procs_1_threads_noft1.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 10000 -nofaulttolerance -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_10000_changes_17_procs_1_threads_noft1.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 10000 -nofaulttolerance -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_10000_changes_13_procs_1_threads_noft1.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 10000 -nofaulttolerance -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_10000_changes_9_procs_1_threads_noft1.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 10000 -nofaulttolerance -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_10000_changes_5_procs_1_threads_noft1.log'

# parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "



################################################################################
# Checkpoint each epoch 50 epochs 10000 changes
################################################################################

# # parallel-ssh -h ~/caelum_25_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 25 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 10000 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_10000_changes_25_procs_1_threads_checkpointatbatch_length_1_incremental1.log'

# # parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# # parallel-ssh -h ~/caelum_21_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 21 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 10000 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_10000_changes_21_procs_1_threads_checkpointatbatch_length_1_incremental1.log'

# # parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# # parallel-ssh -h ~/caelum_17_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 17 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 10000 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_10000_changes_17_procs_1_threads_checkpointatbatch_length_1_incremental1.log'

# # parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# # parallel-ssh -h ~/caelum_13_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 13 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 10000 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_10000_changes_13_procs_1_threads_checkpointatbatch_length_1_incremental1.log'

# # parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# # parallel-ssh -h ~/caelum_9_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 9 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 10000 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_10000_changes_9_procs_1_threads_checkpointatbatch_length_1_incremental1.log'

# # parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

# # parallel-ssh -h ~/caelum_5_machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe connected-components -mwc 4 -logPrefix /tmp/falkirk/ -p $PROCID -n 5 -t 1 -nonincrementalftmanager -nodecount 100000000 -edgecount 75000000 -numepochstorun 50 -changesperepoch 10000 -h @/home/srguser/machines &> cc_100000000_nodes_75000000_edges_50_epochs_10000_changes_5_procs_1_threads_checkpointatbatch_length_1_incremental1.log'

# # parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "

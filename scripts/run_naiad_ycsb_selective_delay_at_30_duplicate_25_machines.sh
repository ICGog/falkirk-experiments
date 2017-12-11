#!/bin/bash
parallel-ssh -v -h ~/caelum_25_machines -t 0 -p 26 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; export MONO_GC_PARAMS=nursery-size=256m ; ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe ycsb-selective -ycsbconfigfile /home/srguser/streaming-benchmarks-yahoo/conf/localConf.yaml -minimallog -t 4 -n 25 -p $PROCID -h @/home/${USER}/machines_25 --reachability 10 --deadlocktimeout 5 -loadtarget 120000000 -timeslice 1000 -numelements 12000000000 &> ycsb-caelum-$PROCID.log'

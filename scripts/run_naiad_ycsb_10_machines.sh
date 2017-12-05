#!/bin/bash
parallel-ssh -v -h ~/caelum_10_machines -t 0 -p 26 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; export MONO_GC_PARAMS=nursery-size=256m ; ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe ycsb-optimised -ycsbconfigfile /home/${USER}/streaming-benchmarks-yahoo/conf/localConf.yaml -minimallog -t 10 -n 10 -p $PROCID -h @/home/${USER}/machines_10 --reachability 50 --deadlocktimeout 10 -loadtarget 3500000 -timeslice 1000 -numelements 150000000 -ft -enablefailure -failafter 30000 &> ycsb-caelum-$PROCID.log'

#!/bin/bash
parallel-ssh -v -h ~/caelum_5_machines -t 0 -p 26 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; export MONO_GC_PARAMS=nursery-size=256m ; mono --debug ./FaultToleranceExamples/bin/Debug/FaultToleranceExamples.exe ycsb-optimised -ycsbconfigfile /home/${USER}/streaming-benchmarks-yahoo/conf/localConf.yaml -t 10 -n 5 -p $PROCID -h @/home/${USER}/machines_5 --reachability 50 --deadlocktimeout 10 -loadtarget 3000000 -timeslice 1000 -numelements 150000000 &> ycsb-caelum-$PROCID.log'
# -ft -mwc 1  -enablefailure -failafter 28000

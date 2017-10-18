#!/bin/bash
# $1 = loadtarget
# $2 = timeslice
# $3 = numelements
parallel-ssh -v -h ~/caelum_20_machines -t 0 -p 50 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe ycsbdd -ycsbconfigfile /home/srguser/streaming-benchmarks-yahoo/conf/localConf.yaml -minimallog -t 10 -n 20 -p $PROCID -h @/home/${USER}/machines_20 -loadtarget $1 -timeslice $2 -numelements $3 &> ycsb-caelum-$PROCID.log'

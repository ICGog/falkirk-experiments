#!/bin/bash
# $1 = num hosts
parallel-ssh -h /home/srguser/machines -t 0 -p 50 -i 'rm -r /tmp/falkirk/ ; PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe complex-ft-workflow -mwc $1 -log /tmp/falkirk/ -p $PROCID -n $1 -slowBase 0 -slowRange 1 -ccBase 1 -ccRange 2 -fpBase 3 -fpRange 1 -numberOfKeys 100 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 5000 -slowBatchTime 20000 -htBatchSize 10 -htSleepTime 1000 -htInitialBatches 10 -h @/home/srguser/machines'

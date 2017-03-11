#!/bin/bash
parallel-ssh -v -h ~/caelum_tmp -t 0 -p 50 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe complex-ft-workflow -mwc 25 -log /tmp/falkirk/ -p $PROCID -n 25 -slowBase 1 -slowRange 6 -ccBase 6 -ccRange 12 -fpBase 18 -fpRange 7 -numberOfKeys 6250 -fastBatchSize 1 -fastSleepTime 200 -ccBatchTime 2000 -slowBatchTime 40000 -htBatchSize 75 -htSleepTime 1000 -htInitialBatches 75 -h @/home/${USER}/machines &> caelum$PROCID.log'

#!/bin/bash
parallel-ssh -v -h ~/caelum_tmp -t 0 -p 50 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe complex-ft-workflow -mwc 8 -log /tmp/falkirk/ -p $PROCID -n 25 -t 8 -slowBase 1 -slowRange 5 -ccBase 6 -ccRange 15 -fpBase 21 -fpRange 4 -numberOfKeys 1000 -fastBatchSize 1 -fastSleepTime 400 -ccBatchTime 5000 -slowBatchTime 60000 -htBatchSize 10 -htSleepTime 1000 -htInitialBatches 10 -h @/home/${USER}/machines &> caelum$PROCID.log'
# -nonincrementalftmanager

# -numberOfKeys - keys for records are generated within [0, numberOfKeys]
# -fastBatchSize - number of fast queries per batch/onNext
# -fastSleepTime - time (ms) between fast batches
# -ccBatchTime -
# -slowBatchTime -
# -htBatchSize - number of high throughput records per batch/onNext
# -htSleepTime - time to sleep between introducing new highthroughput batch
# -htInitialBatches - max number of high throughput batches in the system

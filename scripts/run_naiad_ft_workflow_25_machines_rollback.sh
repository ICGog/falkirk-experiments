#!/bin/bash

#parallel-ssh -v -h ~/caelum_tmp -t 0 -p 50 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe complex-ft-workflow -mwc 6 -log /tmp/falkirk/ -p $PROCID -n 25 -t 2 -slowBase 1 -slowRange 5 -ccBase 6 -ccRange 15 -fpBase 21 -fpRange 4 -numberOfKeys 10000 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 20000 -slowBatchTime 60000 -htBatchSize 512 -htSleepTime 1000 -htInitialBatches 20 -failure 60 -h @/home/${USER}/machines &> caelum$PROCID.log'

#parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "
#scp /tmp/falkirk/ftmanager.log icg27@ganymede:/mnt/data/icg27/falkirk/complex_25_machines_10000_keys_512_batchsize_rollback_time/ftmanager_threads_2.log
#parallel-ssh -v -h ~/caelum_all -t 0 -p 50 -i 'rm -r /tmp/falkirk'


parallel-ssh -v -h ~/caelum_tmp -t 0 -p 50 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe complex-ft-workflow -mwc 6 -log /tmp/falkirk/ -p $PROCID -n 25 -t 3 -slowBase 1 -slowRange 5 -ccBase 6 -ccRange 15 -fpBase 21 -fpRange 4 -numberOfKeys 10000 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 20000 -slowBatchTime 60000 -htBatchSize 512 -htSleepTime 1000 -htInitialBatches 20 -failure 60 -h @/home/${USER}/machines &> caelum$PROCID.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "
scp /tmp/falkirk/ftmanager.log icg27@ganymede:/mnt/data/icg27/falkirk/complex_25_machines_10000_keys_512_batchsize_rollback_time/ftmanager_threads_3.log
parallel-ssh -v -h ~/caelum_all -t 0 -p 50 -i 'rm -r /tmp/falkirk'


parallel-ssh -v -h ~/caelum_tmp -t 0 -p 50 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe complex-ft-workflow -mwc 6 -log /tmp/falkirk/ -p $PROCID -n 25 -t 4 -slowBase 1 -slowRange 5 -ccBase 6 -ccRange 15 -fpBase 21 -fpRange 4 -numberOfKeys 10000 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 20000 -slowBatchTime 60000 -htBatchSize 512 -htSleepTime 1000 -htInitialBatches 20 -failure 60 -h @/home/${USER}/machines &> caelum$PROCID.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "
scp /tmp/falkirk/ftmanager.log icg27@ganymede:/mnt/data/icg27/falkirk/complex_25_machines_10000_keys_512_batchsize_rollback_time/ftmanager_threads_4.log
parallel-ssh -v -h ~/caelum_all -t 0 -p 50 -i 'rm -r /tmp/falkirk'


parallel-ssh -v -h ~/caelum_tmp -t 0 -p 50 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe complex-ft-workflow -mwc 6 -log /tmp/falkirk/ -p $PROCID -n 25 -t 5 -slowBase 1 -slowRange 5 -ccBase 6 -ccRange 15 -fpBase 21 -fpRange 4 -numberOfKeys 10000 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 20000 -slowBatchTime 60000 -htBatchSize 512 -htSleepTime 1000 -htInitialBatches 20 -failure 60 -h @/home/${USER}/machines &> caelum$PROCID.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "
scp /tmp/falkirk/ftmanager.log icg27@ganymede:/mnt/data/icg27/falkirk/complex_25_machines_10000_keys_512_batchsize_rollback_time/ftmanager_threads_5.log
parallel-ssh -v -h ~/caelum_all -t 0 -p 50 -i 'rm -r /tmp/falkirk'


parallel-ssh -v -h ~/caelum_tmp -t 0 -p 50 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe complex-ft-workflow -mwc 6 -log /tmp/falkirk/ -p $PROCID -n 25 -t 6 -slowBase 1 -slowRange 5 -ccBase 6 -ccRange 15 -fpBase 21 -fpRange 4 -numberOfKeys 10000 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 20000 -slowBatchTime 60000 -htBatchSize 512 -htSleepTime 1000 -htInitialBatches 20 -failure 60 -h @/home/${USER}/machines &> caelum$PROCID.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "
scp /tmp/falkirk/ftmanager.log icg27@ganymede:/mnt/data/icg27/falkirk/complex_25_machines_10000_keys_512_batchsize_rollback_time/ftmanager_threads_6.log
parallel-ssh -v -h ~/caelum_all -t 0 -p 50 -i 'rm -r /tmp/falkirk'


parallel-ssh -v -h ~/caelum_tmp -t 0 -p 50 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe complex-ft-workflow -mwc 6 -log /tmp/falkirk/ -p $PROCID -n 25 -t 7 -slowBase 1 -slowRange 5 -ccBase 6 -ccRange 15 -fpBase 21 -fpRange 4 -numberOfKeys 10000 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 20000 -slowBatchTime 60000 -htBatchSize 512 -htSleepTime 1000 -htInitialBatches 20 -failure 60 -h @/home/${USER}/machines &> caelum$PROCID.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "
scp /tmp/falkirk/ftmanager.log icg27@ganymede:/mnt/data/icg27/falkirk/complex_25_machines_10000_keys_512_batchsize_rollback_time/ftmanager_threads_7.log
parallel-ssh -v -h ~/caelum_all -t 0 -p 50 -i 'rm -r /tmp/falkirk'


parallel-ssh -v -h ~/caelum_tmp -t 0 -p 50 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe complex-ft-workflow -mwc 6 -log /tmp/falkirk/ -p $PROCID -n 25 -t 8 -slowBase 1 -slowRange 5 -ccBase 6 -ccRange 15 -fpBase 21 -fpRange 4 -numberOfKeys 10000 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 20000 -slowBatchTime 60000 -htBatchSize 512 -htSleepTime 1000 -htInitialBatches 20 -failure 60 -h @/home/${USER}/machines &> caelum$PROCID.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "
scp /tmp/falkirk/ftmanager.log icg27@ganymede:/mnt/data/icg27/falkirk/complex_25_machines_10000_keys_512_batchsize_rollback_time/ftmanager_threads_8.log
parallel-ssh -v -h ~/caelum_all -t 0 -p 50 -i 'rm -r /tmp/falkirk'


parallel-ssh -v -h ~/caelum_tmp -t 0 -p 50 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe complex-ft-workflow -mwc 6 -log /tmp/falkirk/ -p $PROCID -n 25 -t 9 -slowBase 1 -slowRange 5 -ccBase 6 -ccRange 15 -fpBase 21 -fpRange 4 -numberOfKeys 10000 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 20000 -slowBatchTime 60000 -htBatchSize 512 -htSleepTime 1000 -htInitialBatches 20 -failure 60 -h @/home/${USER}/machines &> caelum$PROCID.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "
scp /tmp/falkirk/ftmanager.log icg27@ganymede:/mnt/data/icg27/falkirk/complex_25_machines_10000_keys_512_batchsize_rollback_time/ftmanager_threads_9.log
parallel-ssh -v -h ~/caelum_all -t 0 -p 50 -i 'rm -r /tmp/falkirk'


parallel-ssh -v -h ~/caelum_tmp -t 0 -p 50 -i 'PROCID=`./falkirk-experiments/scripts/get_falkirk_proc_id.sh` ; cd falkirk/Naiad/ ; mono-sgen ./FaultToleranceExamples/bin/Release/FaultToleranceExamples.exe complex-ft-workflow -mwc 6 -log /tmp/falkirk/ -p $PROCID -n 25 -t 10 -slowBase 1 -slowRange 5 -ccBase 6 -ccRange 15 -fpBase 21 -fpRange 4 -numberOfKeys 10000 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 20000 -slowBatchTime 60000 -htBatchSize 512 -htSleepTime 1000 -htInitialBatches 20 -failure 60 -h @/home/${USER}/machines &> caelum$PROCID.log'

parallel-ssh -h ~/caelum_tmp -i " cd falkirk-experiments/scripts ; ./kill_falkirk.sh "
scp /tmp/falkirk/ftmanager.log icg27@ganymede:/mnt/data/icg27/falkirk/complex_25_machines_10000_keys_512_batchsize_rollback_time/ftmanager_threads_10.log
parallel-ssh -v -h ~/caelum_all -t 0 -p 50 -i 'rm -r /tmp/falkirk'

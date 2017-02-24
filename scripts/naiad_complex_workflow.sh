
# Four machine command
mono --debug --gc=boehm ./FaultToleranceExamples/bin/Debug/FaultToleranceExamples.exe complex-ft-workflow -mwc 4 -log /tmp/falkirk/ -p 0 -n 4 -slowBase 0 -slowRange 1 -ccBase 1 -ccRange 2 -fpBase 3 -fpRange 1 -numberOfKeys 100 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 5000 -slowBatchTime 20000 -htBatchSize 10 -htSleepTime 1000 -htInitialBatches 10 -h 10.0.0.48:2101 10.0.0.49:2101 10.0.0.50:2101 10.0.0.51:2101

# Single machine command
mono --debug --gc=boehm ./FaultToleranceExamples/bin/Debug/FaultToleranceExamples.exe complex-ft-workflow -log /tmp/falkirk/ -slowBase 0 -slowRange 1 -ccBase 0 -ccRange 1 -fpBase 0 -fpRange 1 -numberOfKeys 10 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 2000 -slowBatchTime 4000 -htBatchSize 100 -htSleepTime 1000 -htInitialBatches 10

mono --debug --gc=boehm ./FaultToleranceExamples/bin/Debug/FaultToleranceExamples.exe complex-ft-workflow -mwc 4 -log /tmp/falkirk/ -p 0 -n 4 -slowBase 0 -slowRange 1 -ccBase 1 -ccRange 2 -fpBase 3 -fpRange 1 -numberOfKeys 100 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 5000 -slowBatchTime 20000 -htBatchSize 10 -htSleepTime 1000 -htInitialBatches 10 -h 10.0.0.52:2101 10.0.0.53:2101 10.0.0.54:2101 10.0.0.55:2101


mono --debug --gc=boehm ./FaultToleranceExamples/bin/Debug/FaultToleranceExamples.exe complex-ft-workflow -mwc 4 -log /tmp/falkirk/ -p 0 -n 4 -slowBase 0 -slowRange 1 -ccBase 1 -ccRange 2 -fpBase 3 -fpRange 1 -numberOfKeys 100 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 5000 -slowBatchTime 20000 -htBatchSize 10 -htSleepTime 1000 -htInitialBatches 10 -h 10.0.0.56:2101 10.0.0.57:2101 10.0.0.58:2101 10.0.0.59:2101

mono --debug --gc=boehm ./FaultToleranceExamples/bin/Debug/FaultToleranceExamples.exe complex-ft-workflow -mwc 4 -log /tmp/falkirk/ -p 0 -n 4 -slowBase 0 -slowRange 1 -ccBase 1 -ccRange 2 -fpBase 3 -fpRange 1 -numberOfKeys 100 -fastBatchSize 1 -fastSleepTime 1000 -ccBatchTime 5000 -slowBatchTime 20000 -htBatchSize 10 -htSleepTime 1000 -htInitialBatches 10 -h 10.0.0.44:2101 10.0.0.45:2101 10.0.0.46:2101 10.0.0.47:2101





mono --debug ./FaultToleranceExamples/bin/Debug/FaultToleranceExamples.exe complex-ft-workflow -mwc 10 -log /tmp/falkirk/ -p 0 -n 10 -slowBase 0 -slowRange 3 -ccBase 3 -ccRange 5 -fpBase 8 -fpRange 2 -numberOfKeys 5000 -fastBatchSize 1 -fastSleepTime 200 -ccBatchTime 2500 -slowBatchTime 40000 -htBatchSize 50 -htSleepTime 1000 -htInitialBatches 50 -h 10.0.0.48:2101 10.0.0.49:2101 10.0.0.50:2101 10.0.0.51:2101 10.0.0.52:2101 10.0.0.53:2101 10.0.0.54:2101 10.0.0.55:2101 10.0.0.56:2101 10.0.0.57:2101


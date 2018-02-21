#!/bin/bash
# $1 path to falkirk-experiments directory

################################################################################
# YSB failure recovery latency duplicate
################################################################################
python plot_ycsb_ft_latency_timeline.py --presentation_mode --file_format=png
mv ycsb_ft_latency_timeline.png ycsb_ft_latency_timeline_duplicate_1.png

python plot_ycsb_ft_latency_timeline.py --log_paths=$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-1.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-2.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-3.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-4.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-5.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-6.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-7.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-8.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-9.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-10.txt --labels=Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink --presentation_mode --file_format=png
mv ycsb_ft_latency_timeline.png ycsb_ft_latency_timeline_duplicate_2.png

python plot_ycsb_ft_latency_timeline.py --log_paths=$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-1.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-2.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-3.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-4.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-5.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-6.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-7.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-8.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-9.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-10.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-1.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-2.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-3.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-4.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-5.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-6.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-7.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-8.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-9.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-10.txt --labels=Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink --presentation_mode --file_format=png
mv ycsb_ft_latency_timeline.png ycsb_ft_latency_timeline_duplicate_3.png

python plot_ycsb_ft_latency_timeline.py --log_paths=$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-1.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-2.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-3.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-4.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-5.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-6.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-7.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-8.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-9.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-10.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-1.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-2.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-3.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-4.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-5.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-6.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-7.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-8.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-9.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-10.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-1.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-2.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-3.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-4.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-5.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-6.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-7.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-8.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-9.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-10.txt --labels=Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad --presentation_mode --file_format=png
mv ycsb_ft_latency_timeline.png ycsb_ft_latency_timeline_duplicate_4.png
#!/bin/bash
# $1 path to falkirk-experiments directory

################################################################################
# YSB failure recovery latency duplicate and exactly once
################################################################################

python plot_ysb_ft_latency_double_timeline.py --log_paths=$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-1.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-2.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-3.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-4.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-5.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-6.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-7.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-8.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-9.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-failure-drizzle-10.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-1.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-2.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-3.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-4.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-5.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-6.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-7.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-8.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-9.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-failure-flink-10.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-1.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-2.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-3.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-4.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-5.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-6.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-7.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-8.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-9.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-failure-naiad-10.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-failure-drizzle-1.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-failure-drizzle-2.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-failure-drizzle-3.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-failure-drizzle-4.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-failure-drizzle-5.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-failure-drizzle-6.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-failure-drizzle-7.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-failure-drizzle-8.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-failure-drizzle-9.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-failure-drizzle-10.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-failure-flink-1.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-failure-flink-2.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-failure-flink-3.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-failure-flink-4.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-failure-flink-5.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-failure-flink-6.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-failure-flink-7.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-failure-flink-8.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-failure-flink-9.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-failure-flink-10.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-failure-naiad-1.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-failure-naiad-2.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-failure-naiad-3.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-failure-naiad-4.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-failure-naiad-5.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-failure-naiad-6.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-failure-naiad-7.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-failure-naiad-8.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-failure-naiad-9.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-failure-naiad-10.txt --labels=Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,ExactDrizzle,ExactDrizzle,ExactDrizzle,ExactDrizzle,ExactDrizzle,ExactDrizzle,ExactDrizzle,ExactDrizzle,ExactDrizzle,ExactDrizzle,ExactFlink,ExactFlink,ExactFlink,ExactFlink,ExactFlink,ExactFlink,ExactFlink,ExactFlink,ExactFlink,ExactFlink,ExactNaiad,ExactNaiad,ExactNaiad,ExactNaiad,ExactNaiad,ExactNaiad,ExactNaiad,ExactNaiad,ExactNaiad,ExactNaiad --paper_mode --file_format=pdf
mv ysb_ft_latency_timeline.pdf ysb_ft_latency_double_timeline.pdf
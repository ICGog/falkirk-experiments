#!/bin/bash
# $1 path to falkirk-experiments directory

################################################################################
# YSB latency exactly once
################################################################################
python plot_ysb_latency_cdf.py --log_paths=$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-drizzle-5.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-drizzle-4.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-drizzle-3.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-drizzle-2.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-drizzle-1.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-drizzle-6.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-drizzle-7.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-drizzle-8.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-drizzle-9.txt,$1/results/latencies-10000k-25machines-288partitions-5reduces-200msbatch-reduce-10group-notify-drizzle-10.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-flink-1.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-flink-2.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-flink-3.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-flink-4.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-flink-5.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-flink-6.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-flink-7.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-flink-8.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-flink-9.txt,$1/results/latencies-10000k-50ms-3cores-checkpoint-1000ms-exactly-once-flink-10.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-naiad-1.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-naiad-2.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-naiad-3.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-naiad-4.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-naiad-5.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-naiad-6.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-naiad-7.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-naiad-8.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-naiad-9.txt,$1/results/latencies-10000k-25machines-6-threads-1000ms-slice-nonincremental-exactly-once-naiad-10.txt --labels=Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Drizzle,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Flink,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad --paper_mode --exactly_once --file_format=pdf
mv ysb_latency_cdf.pdf ysb_latency_exactly_once_cdf.pdf

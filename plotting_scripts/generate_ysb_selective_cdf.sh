#!/bin/bash
# $1 path to falkirk-experiments directory

################################################################################
# YSB selective vs non-selective latency CDF
################################################################################
python3 plot_ysb_selective_latency_cdf.py --log_paths=$1/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-1.txt,$1/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-2.txt,$1/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-3.txt,$1/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-4.txt,$1/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-5.txt,$1/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-6.txt,$1/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-7.txt,$1/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-8.txt,$1/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-9.txt,$1/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-10.txt,$1/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-1.txt,$1/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-2.txt,$1/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-3.txt,$1/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-4.txt,$1/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-5.txt,$1/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-6.txt,$1/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-7.txt,$1/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-8.txt,$1/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-9.txt,$1/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-10.txt --labels=NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad --delay_epoch=5 --paper_mode --file_format=pdf
mv ysb_latency_cdf.pdf ysb_selective_120000k_latency_duplicate_delay_5_epochs_cdf.pdf

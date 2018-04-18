#!/bin/bash

#------------------------------------------
# Delay at 30th epoch, exactly once

python plot_ysb_selective_latency_timeline.py --log_paths=/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-10.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-nonincremental-exactly-once-naiad-delay-at-30-10.txt --labels=,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad --start_time=20 --end_time=46 --x_time_increment=2 --paper_mode
mv ysb_ft_latency_timeline.pdf ysb_selective_60000k_latency_exactly_once_delay_at_epoch_30_timeline.pdf

#------------------------------------------
# Delay each 5 epochs, exactly once

python plot_ysb_selective_latency_timeline.py --log_paths=/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-10.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-10.txt --labels=,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad --start_time=20 --end_time=86 --x_time_increment=3
mv ysb_ft_latency_timeline.pdf ysb_selective_60000k_latency_exactly_once_delay_5_epochs_timeline.pdf

python plot_ysb_selective_latency_cdf.py --log_paths=/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-10.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-10.txt --labels=NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad --delay_epoch=5 --paper_mode
mv ysb_latency_cdf.pdf ysb_selective_60000k_latency_exactly_once_delay_5_epochs_cdf.pdf

python plot_ysb_selective_latency_box_and_whiskers.py --log_paths=/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-10.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-60000k-25machines-4-threads-1000ms-slice-exactly-once-naiad-delay-5-epochs-10.txt --labels=NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad --delay_epoch=5
mv ysb_latency_box_and_whiskers.pdf ysb_selective_60000k_latency_exactly_once_delay_5_epochs_box_and_whiskers.pdf

#------------------------------------------
# Delay at 30th epoch

python plot_ysb_selective_latency_timeline.py --log_paths=/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-10.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-at-30-10.txt --labels=NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad --start_time=20 --end_time=46 --x_time_increment=2
mv ysb_ft_latency_timeline.pdf ysb_selective_120000k_latency_delay_at_epoch_30_timeline.pdf

#------------------------------------------
# Delay each 5 epochs

python plot_ysb_selective_latency_timeline.py --log_paths=/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-10.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-10.txt --labels=NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad --start_time=20 --end_time=86 --x_time_increment=3
mv ysb_ft_latency_timeline.pdf ysb_selective_120000k_latency_delay_5_epochs_timeline.pdf

python plot_ysb_selective_latency_cdf.py --log_paths=/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-10.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-10.txt --labels=NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad --delay_epoch=5
mv ysb_latency_cdf.pdf ysb_selective_120000k_latency_duplicate_delay_5_epochs_cdf.pdf

python plot_ysb_selective_latency_box_and_whiskers.py --log_paths=/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-10.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-5-epochs-10.txt --labels=NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad --delay_epoch=5
mv ysb_latency_box_and_whiskers.pdf ysb_selective_120000k_latency_duplicate_delay_5_epochs_box_and_whiskers.pdf
#------------------------------------------
# Delay each 8 epochs

python plot_ysb_selective_latency_timeline.py --log_paths=/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-10.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-10.txt --labels=NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad --start_time=20 --end_time=86 --x_time_increment=3
mv ysb_ft_latency_timeline.pdf ysb_selective_120000k_latency_delay_8_epochs_timeline.pdf

python plot_ysb_selective_latency_cdf.py --log_paths=/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-10.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-10.txt --labels=NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad --delay_epoch=8
mv ysb_latency_cdf.pdf ysb_selective_120000k_latency_duplicate_delay_8_epochs_cdf.pdf

python plot_ysb_selective_latency_box_and_whiskers.py --log_paths=/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-selective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-10.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-1.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-2.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-3.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-4.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-5.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-6.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-7.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-8.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-9.txt,/home/icg27/Dropbox/phd/falkirk-experiments/results/latencies-nonselective-120000k-25machines-4-threads-1000ms-slice-naiad-delay-8-epochs-10.txt --labels=NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,NaiadSelective,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad,Naiad --delay_epoch=8
mv ysb_latency_box_and_whiskers.pdf ysb_selective_120000k_latency_duplicate_delay_8_epochs_box_and_whiskers.pdf
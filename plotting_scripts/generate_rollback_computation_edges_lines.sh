#!/bin/bash
python3 plot_rollback_time_lines.py --ftmanager_log_paths=/mnt/data/icg27/falkirk/falkirk-results-large/complex_25_machines_10000_keys_512_batchsize_rollback_time/processed_ftmanager_threads_2.log,/mnt/data/icg27/falkirk/falkirk-results-large/complex_25_machines_10000_keys_512_batchsize_rollback_time/processed_ftmanager_threads_3.log,/mnt/data/icg27/falkirk/falkirk-results-large/complex_25_machines_10000_keys_512_batchsize_rollback_time/processed_ftmanager_threads_4.log,/mnt/data/icg27/falkirk/falkirk-results-large/complex_25_machines_10000_keys_512_batchsize_rollback_time/processed_ftmanager_threads_5.log,/mnt/data/icg27/falkirk/falkirk-results-large/complex_25_machines_10000_keys_512_batchsize_rollback_time/processed_ftmanager_threads_6.log,/mnt/data/icg27/falkirk/falkirk-results-large/complex_25_machines_10000_keys_512_batchsize_rollback_time/processed_ftmanager_threads_7.log,/mnt/data/icg27/falkirk/falkirk-results-large/complex_25_machines_10000_keys_512_batchsize_rollback_time/processed_ftmanager_threads_8_run6.log,/mnt/data/icg27/falkirk/falkirk-results-large/complex_25_machines_10000_keys_512_batchsize_rollback_time/processed_ftmanager_threads_9_run6.log,/mnt/data/icg27/falkirk/falkirk-results-large/complex_25_machines_10000_keys_512_batchsize_rollback_time/processed_ftmanager_threads_10_run6.log,/mnt/data/icg27/falkirk/falkirk-results-large/complex_25_machines_10000_keys_512_batchsize_rollback_time/processed_ftmanager_threads_11_run2.log,/mnt/data/icg27/falkirk/falkirk-results-large/complex_25_machines_10000_keys_512_batchsize_rollback_time/processed_ftmanager_threads_12_run5.log --begin_tag='COMPUTATION STARTED ROLLBACK' --end_tag='ROLLBACK COMPLETE' --paper_mode --xlabels=5431,17081,35481,60631,92531,131181,176581,228731,287631,353281,425861 --xlabel_name='Number of edges' --max_x=430000 --x_increment=100000

#!/bin/bash
# $1 path to falkirk-experiments directory

################################################################################
# Complex workflow latency timeline
################################################################################
./generate_complex_latency_timeline.sh $1

################################################################################
# Complex workflow Falkirk vs STW
################################################################################
./generate_complex_latency_falkirk_vs_stop_the_world.sh $1

#./generate_cc_falkirk_speedup_lines.sh
#./generate_cc_selective_runtime_lines.sh
#./generate_cc_selective_speedup_lines.sh

################################################################################
# YSB latency CDF duplicate
################################################################################
./generate_ysb_latency_cdf_duplicate.sh $1

################################################################################
# YSB latency CDF exactly once
################################################################################
./generate_ysb_latency_cdf_exactly_once.sh $1

################################################################################
# YSB latency CDF duplicate and exactly once
################################################################################
./generate_ysb_latency_cdf_duplicate_exactly_once.sh $1

################################################################################
# YSB worker failure latency duplicate and exactly once
################################################################################
./generate_ysb_latency_timeline_duplicate_exactly_once.sh $1

################################################################################
# YSB selective timeline
################################################################################
./generate_ysb_selective_timeline.sh $1

################################################################################
# YSB selective CDF
################################################################################
./generate_ysb_selective_cdf.sh $1

################################################################################
# Rollback runtime
################################################################################
./generate_rollback_computation_box_and_whiskers.sh $1
./generate_rollback_computation_edges_lines.sh $1

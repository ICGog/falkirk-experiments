#!/bin/bash
# $1 path to falkirk-experiments directory

################################################################################
# Complex worklfow timeline
################################################################################

./generate_presentation_complex_latency_timeline.sh $1

################################################################################
# Falkirk vs stop-the-world
################################################################################

./generate_presentation_complex_latency_falkirk_vs_stop_the_world.sh $1

################################################################################
# YSB latency duplicate
################################################################################

./generate_presentation_ysb_latency_cdf_duplicate.sh $1

################################################################################
# YSB latency exactly once
################################################################################

./generate_presentation_ysb_latency_cdf_exactly_once.sh $1

################################################################################
# YSB failure recovery latency duplicate
################################################################################

./generate_presentation_ysb_latency_timeline_duplicate.sh $1

################################################################################
# YSB failure recovery latency exactly once
################################################################################

./generate_presentation_ysb_latency_timeline_exactly_once.sh $1

################################################################################
# YSB failure recovery latency duplicate and exactly once
################################################################################

./generate_presentation_ysb_latency_timeline_duplicate_exactly_once.sh $1

################################################################################
# YSB selective vs non-selective latency CDF
################################################################################
./generate_presentation_ysb_selective_cdf.sh $1

################################################################################
# YSB selective vs non-selective timeline, delay at 30th epoch
################################################################################
./generate_presentation_ysb_selective_timeline.sh $1

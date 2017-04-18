#!/bin/bash

./generate_complex_latency_timeline.sh

./generate_complex_latency_falkirk_vs_stop_the_world.sh

./generate_cc_falkirk_slowdown_lines.sh

./generate_cc_selective_runtime_lines.sh
./generate_cc_selective_speedup_lines.sh

./generate_rollback_computation_box_and_whiskers.sh
./generate_rollback_computation_lines.sh

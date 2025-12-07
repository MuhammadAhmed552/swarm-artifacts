#!/bin/bash

set -u

SCRIPT_DIR="$( realpath -sm "$( dirname "${BASH_SOURCE[0]}" )"/../scripts )"

"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_1_client oops-workloada 1 1 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_2_client oops-workloada 1 2 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_3_client oops-workloada 1 3 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_4_client oops-workloada 1 4 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_5_client oops-workloada 1 5 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_6_client oops-workloada 1 6 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_7_client oops-workloada 1 7 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_8_client oops-workloada 1 8 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_9_client oops-workloada 1 9 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_10_client oops-workloada 1 10 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_11_client oops-workloada 1 11 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_12_client oops-workloada 1 12 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_13_client oops-workloada 1 13 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_14_client oops-workloada 1 14 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_15_client oops-workloada 1 15 -m 1 -T 0 -d=true
"$SCRIPT_DIR"/run.sh swarmkv slam_50perc_latency_16_client oops-workloada 1 16 -m 1 -T 0 -d=true
./gather-logs.sh

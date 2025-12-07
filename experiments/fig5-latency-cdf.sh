#!/bin/bash

set -u

SCRIPT_DIR="$( realpath -sm "$( dirname "${BASH_SOURCE[0]}" )"/../scripts )"

"$SCRIPT_DIR"/run.sh swarmkv fig5-latency-cdf/workload-A/SWARM-KV oops-workloada 1 1 -m 2 -T 0 -d=true
# "$SCRIPT_DIR"/run.sh swarmkv fig5-latency-cdf/workload-B/SWARM-KV oops-workloadb 2 4 -m 2 -T 0 -d=true
# "$SCRIPT_DIR"/run.sh swarmkv fig5-latency-cdf/workload-A/DM-ABD oops-workloada 2 4 -m 2 -d=true -g=false --in_place=false
# "$SCRIPT_DIR"/run.sh swarmkv fig5-latency-cdf/workload-B/DM-ABD oops-workloadb 2 4 -m 2 -d=true -g=false --in_place=false


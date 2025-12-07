#!/bin/bash

set -u

SCRIPT_DIR="$( realpath -sm "$( dirname "${BASH_SOURCE[0]}" )"/../scripts )"

# for num_clients in $(seq 1 16); do
#     # "$SCRIPT_DIR"/run.sh swarmkv slam_sample oops-workload-SLAM-KVStore 1 10 -m 1 -T 0 -d=true -v 120 -n 200000
#     "$SCRIPT_DIR"/run.sh swarmkv "SwarmKV-KVStore-$num_clients-client" oops-workloada 1 "$num_clients" -m 1 -T 0 -d=true -v 120 -n 200000
#     ./gather-logs.sh
# done

# "$SCRIPT_DIR"/run.sh swarmkv "SwarmKV-KVStore-8-client" oops-workloada 1 8 -m 1 -T 0 -d=true -v 120 -n 1
# ./gather-logs.sh

# "$SCRIPT_DIR"/run.sh swarmkv SwarmKV-Register-1-client-100percWrites oops-workloada 1 1 -m 1 -T 0 -d=true -v 120 -n 1
# ./gather-logs.sh

CLIENT_COUNTS="16"
for num_clients in $CLIENT_COUNTS; do
    # "$SCRIPT_DIR"/run.sh swarmkv slam_sample oops-workload-SLAM-KVStore 1 10 -m 1 -T 0 -d=true -v 120 -n 200000
    "$SCRIPT_DIR"/run.sh swarmkv "SwarmKV-Register-$num_clients-client-25percReads" oops-workloada 1 "$num_clients" -m 1 -T 0 -d=true -v 120 -n 1 -l 2000000
    ./gather-logs.sh
done
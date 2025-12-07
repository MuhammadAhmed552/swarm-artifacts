#!/bin/bash

# Navigate up three directories
cd ../.. || exit
cd .. || exit

# Move the swarm-artifacts directory to the current directory
mv home/ma2386/swarm-artifacts swarm-artifacts

# Enter the swarm-artifacts directory
cd swarm-artifacts || exit

# Build the swarm-kv component with the 'fusee' target
./bin/swarm-kv/build.sh swarm-kv fusee

# Go back to the previous directory
cd ..

# Move the swarm-artifacts directory back to its original location
mv swarm-artifacts home/ma2386/swarm-artifacts

# Navigate to the swarm-artifacts directory
cd home/ma2386/swarm-artifacts || exit

# Zip the binaries
./bin/zip-binaries.sh

# Prepare and send deployment
./prepare-deployment.sh
./send-deployment.sh

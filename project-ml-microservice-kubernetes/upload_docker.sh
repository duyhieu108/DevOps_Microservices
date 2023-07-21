#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
docker_path=hieudd

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $docker_path"
echo "$mypw" | docker login -u $docker_path --password-stdin
docker image tag "pyapp:latest" "$docker_path/pyapp:project4"

# Step 3:
# Push image to a docker repository
docker image push "$docker_path/pyapp:project4"
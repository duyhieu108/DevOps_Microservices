#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
docker_path=hieudd

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy project4 --image="$docker_path/pyapp:project4"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/project4 8000:80
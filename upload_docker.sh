#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=herbehordeun/sklearn-prediction-app

# Step 2:  
# Authenticate & tag
docker login --username=herbehordeun
docker image tag sklearn-prediction-app $dockerpath:latest
echo "Docker ID and Image: $dockerpath"

# Step 3:
docker push $dockerpath:latest
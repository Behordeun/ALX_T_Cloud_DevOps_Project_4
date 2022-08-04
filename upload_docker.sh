#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=herbehordeun/udacity-cloud-devops-project4
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=josephmfaulkner
docker tag sklearnapp:sklearnapp herbehordeun/udacity-cloud-devops-project4-sklearn:sklearnapp

# Step 3:
# Push image to a docker repository
docker push herbehordeun/udacity-cloud-devops-project4-sklearn:sklearnapp
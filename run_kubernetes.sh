#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath="herbehordeun/udacity-cloud-devops-project4"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy sklearnapp --image $dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods, svc, deployments
sleep 10
podname = "$(kubectl get pod -o name)"

# Step 4:
# Forward the container port to a host
kubectl get pods
kubectl port-forward $podname --address 0.0.0.0 8000:80

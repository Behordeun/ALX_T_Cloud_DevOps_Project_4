#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

#This is your Docker ID/path
dockerpath=herbehordeun/sklearn-prediction-app

# Run the Docker Hub container with kubernetes

kubectl run sklearn-prediction-app\
    --image=$dockerpath\
    --port=80 --labels app=sklearn-prediction-app


# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward sklearn-prediction-app 8000:80
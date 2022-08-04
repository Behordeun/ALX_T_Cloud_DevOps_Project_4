#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -f Dockerfile . -t sklearnapp --label sklearnapp
# Step 2: 
# List docker images
docker image ls --filter label=sklearnapp
# Step 3: 
# Run flask app
docker run -it -p 5000:5000 sklearnapp
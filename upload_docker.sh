#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
image=beardyc/housepricemlapi
tag=latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $image:$tag"
docker login
docker tag housepricemlapi:$tag $image:$tag

# Step 3:
# Push image to a docker repository
docker push $image:$tag

#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
image=beardyc/housepricemlapi
tag=latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create ns mlapi
kubectl create deployment housingmlapi -n mlapi --image=$image:$tag

# Step 3:
# List kubernetes pods
kubectl get po -n mlapi

printf "\nWaiting for deployment to be available\n"

kubectl wait --for=condition=available --timeout=600s deployment/housingmlapi -n mlapi

kubectl get all -n mlapi

# Step 4:
# Forward the container port to a host
printf "\nPort Forwarding 8080 -> 80\n"
kubectl port-forward deployment/housingmlapi 8080:80 -n mlapi



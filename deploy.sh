#!/bin/bash

IMAGE_NAME="ananth0909/dev-app"

echo "Pulling latest image..."
docker pull $IMAGE_NAME:latest

echo "Stopping old container..."
docker stop react-container || true
docker rm react-container || true

echo "Running new container..."
docker run -d -p 80:80 --name react-container $IMAGE_NAME:latest

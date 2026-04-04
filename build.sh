#!/bin/bash

IMAGE_NAME="ananth0909/dev-app"

echo "Building Docker Image..."
docker build -t $IMAGE_NAME:latest .

echo "Pushing to Docker Hub..."
docker push $IMAGE_NAME:latest

#!/bin/bash

IMAGE=santhiyasasi/devops-app:dev

echo "Pulling latest image"

docker pull $IMAGE

echo "Stopping old container"

docker stop devops-container || true
docker rm devops-container || true

echo "Starting new container"

docker run -d -p 80:80 --name devops-container $IMAGE

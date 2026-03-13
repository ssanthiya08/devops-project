#!/bin/bash

IMAGE_NAME=devops-app
DOCKER_USER=santhiyasasi

echo "Building Docker Image"

docker build -t $DOCKER_USER/$IMAGE_NAME:dev .

echo "Pushing to DockerHub"

docker push $DOCKER_USER/$IMAGE_NAME:dev

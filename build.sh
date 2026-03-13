#!/bin/bash

IMAGE_NAME=devops-app
DOCKER_USER=santhiyasasi

echo "Logging into DockerHub"

echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin

echo "Building Docker Image"

docker build -t $DOCKER_USER/$IMAGE_NAME:dev .

echo "Pushing Docker Image"

docker push $DOCKER_USER/$IMAGE_NAME:dev

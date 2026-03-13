#!/bin/bash

DOCKER_USER="santhiyasasi"

echo "Login to DockerHub"
echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin

echo "Building DEV image"

docker build -t $DOCKER_USER/devops-app-dev:latest .

echo "Pushing DEV image"

docker push $DOCKER_USER/devops-app-dev:latest

#!/bin/bash

DOCKER_USER="santhiyasasi"

echo "Logging into DockerHub..."

echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin

BRANCH=$(git rev-parse --abbrev-ref HEAD)

echo "Current branch: $BRANCH"

if [ "$BRANCH" = "dev" ]; then

  echo "Building DEV image"
  docker build -t $DOCKER_USER/devops-app-dev:latest .

  echo "Pushing DEV image"
  docker push $DOCKER_USER/devops-app-dev:latest

elif [ "$BRANCH" = "master" ]; then

  echo "Building PROD image"
  docker build -t $DOCKER_USER/devops-app-prod:latest .

  echo "Pushing PROD image"
  docker push $DOCKER_USER/devops-app-prod:latest

fi

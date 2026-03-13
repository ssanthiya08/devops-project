#!/bin/bash

DOCKER_USER="santhiyasasi"
IMAGE_NAME="devops-app"
DOCKER_PASS="dckr_pat_8Cw25UmrsvgETCHWXwD1dSP8vwg"

echo "Logging into DockerHub..."

echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin

echo "Building Docker Image..."

docker build -t $DOCKER_USER/$IMAGE_NAME:dev .

echo "Pushing Docker Image..."

docker push $DOCKER_USER/$IMAGE_NAME:dev

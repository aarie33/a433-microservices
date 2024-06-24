#!/bin/bash

# Set variables
DOCKER_USERNAME=aarie33
IMAGE_NAME=karsajobs-ui
TAG=latest

# Build Docker image
docker build -t $DOCKER_USERNAME/$IMAGE_NAME:$TAG .

# Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u $DOCKER_USERNAME --password-stdin

# Push Docker image
docker push $DOCKER_USERNAME/$IMAGE_NAME:$TAG


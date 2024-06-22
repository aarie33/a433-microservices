#!/bin/bash

# Nama dan tag image
IMAGE_NAME="item-app"
IMAGE_TAG="v1"
DOCKER_HUB_REPO="aarie33/$IMAGE_NAME"

# Langkah 1: Build Docker image dari Dockerfile
echo "Building Docker image..."
docker build -t $IMAGE_NAME:$IMAGE_TAG .

# Langkah 2: Melihat daftar image di lokal
echo "List of Docker images:"
docker images

# Langkah 3: Mengubah nama image agar sesuai dengan format Docker Hub
echo "Tagging Docker image for Docker Hub..."
docker tag $IMAGE_NAME:$IMAGE_TAG $DOCKER_HUB_REPO:$IMAGE_TAG

# Langkah 4: Login ke Docker Hub
echo "Logging in to Docker Hub..."
docker login -u "$DOCKER_HUB_USERNAME" -p "$DOCKER_HUB_PASSWORD"

# Langkah 5: Mengunggah image ke Docker Hub
echo "Pushing Docker image to Docker Hub..."
docker push $DOCKER_HUB_REPO:$IMAGE_TAG

# Informasi akhir
echo "Docker image $DOCKER_HUB_REPO:$IMAGE_TAG has been pushed to Docker Hub."


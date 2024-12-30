.PHONY: all build build-slim build-dev push push-all

DOCKER_USERNAME=nativeit
APPLICATION_NAME=masscode
APP_VER="v0.0.1"
NODE_VER=18

# Default target
all: build build-slim build-dev push-all

# Build the Docker image
build:
	docker build -t ${DOCKER_USERNAME}/${APPLICATION_NAME}:${APP_VER} -f ./Dockerfile .

# Build the slim Docker image
build-slim:
	docker build -t ${DOCKER_USERNAME}/${APPLICATION_NAME}:${APP_VER}-slim -f ./Dockerfile.slim .

# Build the dev Docker image
build-dev:
  docker build -t ${DOCKER_USERNAME}/${APPLICATION_NAME}:${APP_VER}-dev -f ./Dockerfile.dev .

# Push the Docker image
push:
  docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:${APP_VER}

# Push all Docker images
push-all:
  docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:${APP_VER}
  docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:${APP_VER}-slim
  docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:${APP_VER}-dev

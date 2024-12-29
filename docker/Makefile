.PHONY: all build build-slim build-dev push push-all

DOCKER_USERNAME=nativeit
APPLICATION_NAME=masscode
APP_VER=0.0.1
NODE_VER=18
DOCKER_IMAGE=${DOCKER_USERNAME}/${APPLICATION_NAME}
BUILD_TAG=v${APP_VER}
BUILD_SLIM_TAG=v${APP_VER}-slim
BUILD_DEV_TAG=v${APP_VER}-dev

# Default target
all: build build-slim build-dev push-all

# Build the Docker image
build:
	docker build -t ${DOCKER_IMAGE}:${APP_VER} -f ./Dockerfile .

# Build the slim Docker image
build-slim:
	docker build -t ${DOCKER_IMAGE}:${APP_VER}-slim -f ./Dockerfile.slim .

# Build the dev Docker image
build-dev:
  docker build -t ${DOCKER_IMAGE}:${APP_VER}-dev -f ./Dockerfile.dev .

# Push the Docker image
push:
  docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:${BUILD_TAG}

# Push all Docker images
push-all:
  docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:${BUILD_TAG}
  docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:${BUILD_SLIM_TAG}
  docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:${BUILD_DEV_TAG}

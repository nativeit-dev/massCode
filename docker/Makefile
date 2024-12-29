.PHONY: build-18 build-18-slim

DOCKER_USERNAME=nativeit
APPLICATION_NAME=masscode
APP_VER=0.0.1
NODE_VER=18
DOCKER_IMAGE=${DOCKER_USERNAME}/${APPLICATION_NAME}

build:
	docker build -t ${DOCKER_IMAGE}:${APP_VER} -f ./Dockerfile .

build-slim:
	docker build -t ${DOCKER_IMAGE}:${APP_VER}-slim -f ./Dockerfile.slim .

build-dev:
  docker build -t ${DOCKER_IMAGE}:dev-${APP_VER}-dev -f ./Dockerfile.electron .

push:
  docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:${}

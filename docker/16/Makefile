.PHONY: build-16 build-16-slim

DOCKER_USERNAME=nativeit
APPLICATION_NAME=electron
NODE_VER=16
DOCKER_IMAGE=nativeit/electron

build-16:
	docker build -t ${DOCKER_IMAGE}:16 -f ./Dockerfile .

build-16-slim:
	docker build -t ${DOCKER_IMAGE}:16-slim -f ./Dockerfile.slim .

push:
  docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:${}

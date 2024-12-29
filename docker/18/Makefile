.PHONY: build-18 build-18-slim

DOCKER_USERNAME=nativeit
APPLICATION_NAME=electron
NODE_VER=18
DOCKER_IMAGE=nativeit/electron

build-18:
	docker build -t ${DOCKER_IMAGE}:18 -f 18/Dockerfile .

build-18-slim:
	docker build -t ${DOCKER_IMAGE}:18-slim -f 18/Dockerfile.slim .

push:
  docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:${}

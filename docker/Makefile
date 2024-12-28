.PHONY: build-14 build-14-slim

DOCKER_USERNAME=nativeit
APPLICATION_NAME=electron
NODE_VER=14
DOCKER_IMAGE=nativeit/electron

build-14:
	docker build -t ${DOCKER_IMAGE}:14 -f 14/Dockerfile .

build-14-slim:
	docker build -t ${DOCKER_IMAGE}:14-slim -f 14/Dockerfile.slim .

push:
  docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:${}

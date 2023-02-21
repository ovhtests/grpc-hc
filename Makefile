SHELL = /bin/bash

.PHONY: build-docker-image
## build-docker-image: builds the docker image
build-docker-image:
	@ docker build . -t grpc-health

.PHONY: run-docker
## run-docker: runs the server as a Docker container
run-docker: build-docker-image
	@ docker run -p 50051:50051 grpc-health

BRANCH := $(shell git rev-parse --abbrev-ref HEAD)

DOCKER_IMAGE_NAME := holos-control-repo
DOCKER_IMAGE_TAG_VERSION := 0.1.0

.PHONY: docker-build docker-run
docker-build:
	$(info Building Holos control repo image for branch: "$(BRANCH)")
	docker build \
		--build-arg BRANCH=${BRANCH} \
		-t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG_VERSION} .

.PHONY: docker-run
docker-run:
	docker run --rm -it \
	-v $(CURDIR):/workspace \
	${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG_VERSION} \
	/bin/sh
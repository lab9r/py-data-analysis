IMAGE_NAME=py-data-analysis
VERSION=1

.PHONY: build

build:
	podman build -t $(IMAGE_NAME):$(VERSION) .
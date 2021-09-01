VERSION := $(shell date +'%y%m%d.%H%M%S')
IMAGE := localhost:32000/fwdays/hello-world:${VERSION}

all: build push

build:
	docker build -t ${IMAGE} .

push:
	docker push ${IMAGE}

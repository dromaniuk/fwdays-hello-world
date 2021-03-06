VERSION := $(shell date +'%y%m%d.%H%M%S.0')
IMAGE := localhost:32000/fwdays/hello-world:${VERSION}
RELEASE := project1

all: build push

update-version:
	sed -i "s/^version: .*/version: ${VERSION}/g" Chart.yaml
	sed -i "s/^appVersion: .*/appVersion: ${VERSION}/g" Chart.yaml

build: update-version
	docker build -t ${IMAGE} .

push:
	docker push ${IMAGE}

install:
	helm install ${RELEASE} .

upgrade:
	helm upgrade ${RELEASE} .

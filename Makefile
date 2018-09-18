.PHONY: build

build:
	docker build --rm=false -t magecloudkit/circleci-php:${TAG} .

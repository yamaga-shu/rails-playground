## build: docker image を build します
.PHONY: build
build:
	docker build --no-cache -t rails-playground .

## up: docker container を立ち上げます
.PHONY: up
up:
	docker run -it --rm --name rails-playground -v $$(pwd):/rails rails-playground
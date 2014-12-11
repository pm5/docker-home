
.PHONY: build test run

build:
	docker build -t pomin5/home .

test:
	docker run -it --rm -p 2222:22 --name test-home pomin5/home /bin/bash

run:
	docker run -d -p 2222:22 pomin5/home

clean:
	docker rm test-home

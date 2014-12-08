
.PHONY: build test run

build:
	docker build -t pomin5/ssh .

test:
	docker run -it --rm -p 2222:22 --name test-ssh pomin5/ssh /bin/bash

run:
	docker run -d -p 2222:22 pomin5/ssh

clean:
	docker rm test-ssh

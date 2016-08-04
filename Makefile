all: build

build: 
	@docker build -t=johnwu/ubuntu:latest .

release: build
	@docker build -t=johnwu/ubuntu:$(shell cat VERSION) .

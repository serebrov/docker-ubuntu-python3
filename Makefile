.DEFAULT: build

build: Dockerfile
	docker build -t serebrov/docker-ubuntu-python3 .

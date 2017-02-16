.DEFAULT: build

build: Dockerfile
	docker build -t serebrov/ubuntu-python3 .

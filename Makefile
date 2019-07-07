NAME = poppypop/docker-certbot-nginx-proxy-companion
VERSION = latest

.PHONY: all build

all: build

build:	
	docker build -t $(NAME):$(VERSION) --rm .
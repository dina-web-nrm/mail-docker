#!make

PWD = $(shell pwd)
DOCKERHUB_VER=v0.1

all: up

up: 
	@docker-compose up -d

down:
	@docker-compose down

ps:
	@docker-compose ps

logs:
	@docker-compose logs

#!make

PWD = $(shell pwd)
MAILSERVER_TAG=2.2

all: up

up:  
	@docker-compose up -d

down:
	@docker-compose down

ps:
	@docker-compose ps

logs:
	@docker-compose logs -f

pull:
	@docker pull tvial/docker-mailserver:${MAILSERVER_TAG}

# https://github.com/tomav/docker-mailserver/wiki/Setup-docker-mailserver-using-the-script-setup.sh

get-setup_script:
	test -f setup.sh ||  wget -q -O setup.sh https://raw.githubusercontent.com/tomav/docker-mailserver/master/setup.sh; chmod a+x ./setup.sh

setup:
	./setup.sh  -i tvial/docker-mailserver:${MAILSERVER_TAG} email add akranes@mail.dina-web.net akranes

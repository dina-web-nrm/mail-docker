#!make

PWD = $(shell pwd)
MAILSERVER_TAG=2.2 # obs, TAG 2.3 is buggy as of now (2017-05-11) se issues 

all: up

up:  
	@docker-compose up -d

down:
	@docker-compose down

test-ssl:
	docker exec mail openssl s_client -connect 0.0.0.0:25 -starttls smtp -CApath /etc/ssl/certs/

pull:
	@docker pull tvial/docker-mailserver:${MAILSERVER_TAG}

# https://github.com/tomav/docker-mailserver/wiki/Setup-docker-mailserver-using-the-script-setup.sh
get-setup_script:
	test -f setup.sh ||  wget -q -O setup.sh https://raw.githubusercontent.com/tomav/docker-mailserver/master/setup.sh; chmod a+x ./setup.sh

add-email_account: get-setup_script 
	@echo "sets up 1 email account with password"
	./setup.sh  -i tvial/docker-mailserver:${MAILSERVER_TAG} email add akranes@mail.dina-web.net akranes

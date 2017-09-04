#!/bin/bash
while IFS=, read USER PSW
do
	echo "user is $USER and password is $PSW"
	./setup.sh -i tvial/docker-mailserver:2.2 -c mail.dina-web.net email update $USER@mail.dina-web.net $PSW 
	docker-compose restart mail
	docker-compose logs --tail=30 -f mail
done < users.csv

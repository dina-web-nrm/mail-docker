./setup.sh -i tvial/docker-mailserver:2.2 -c mail.dina-web.net email update <user>@mail.dina-web.net <psw> 
docker-compose restart mail
docker-compose logs --tail=30 -f mail

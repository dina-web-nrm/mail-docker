docker run -ti --rm -v "$(pwd)"/postfix/ssl:/ssl -h mail.dina-web.net -t tvial/docker-mailserver generate-ssl-certificate


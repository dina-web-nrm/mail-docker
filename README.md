# dw-dmail
An integration project to provide email - this is "dmail" (short for Docker Email - way better than gmail :))

# setting up your  email-server

0. cp your xxx.crt and xxx.key to ./certs/
1. run 'make email_add-account' (at least one email-address needs to be present !?).
2. run 'make email_list-accounts' (to verify that the email has been created).
2. run 'make' (pulls down the 'tvial/docker-mailserver:2.2' [TAG 2.3 is buggy as of now (2017-05-11) )] ).
3. test 'make test-ssl' [ Should return 'Verify return code: 0 (ok)' ] 

Verify that email has been added : cat config/postfix-accounts.cf 





**add an account**

0. run 'make get-setup_script'
1. edit the Makefile, target 'add-email_account' change emailaddress and password
2. run 'make add-email_account'
3. check : cat config/postfix-accounts.cf ( should display emailaddress & crypted psw)


** dkim **
https://github.com/tomav/docker-mailserver/wiki/Configure-DKIM
NB: " To enable DKIM signature, you must have created your mail accounts. Once its done, just run from inside the directory of docker-compose.yml: "

run './dkim_setup.sh' <p>
see -> http://dkim.org/ 



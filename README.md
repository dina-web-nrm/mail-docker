# dw-dmail
An integration project to provide email - this is "dmail" (short for Docker Email - way better than gmail :))

# setting up your  email-server
* pull down the 'tvial/docker-mailserver:2.2' [TAG 2.3 is buggy as of now (2017-05-11) )]
* run 'make fetch-setup'
* run 'make setup'
* run './dkim_setup.sh'
* run 'make'

* test 'make test-ssl'
Should return 'Verify return code: 0 (ok)'

* add an account
1. edit the Makefile, target 'add-email_account' change emailaddress and password
2. run 'make add-email_account'
3. check : cat config/postfix-accounts.cf ( should display emailaddress & crypted psw)


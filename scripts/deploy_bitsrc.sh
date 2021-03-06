#!/bin/bash

npm set init.author.name "MyBit AG"
npm set init.author.email "mybit.development@gmail.com"
npm config set @bit:registry = "https://node.bitsrc.io"
echo "//node.bitsrc.io/:_authToken=$NPM_MYBIT_BOT_TOKEN" > ~/.npmrc
bit config set analytics_reporting false
bit config set error_reporting false
bit config set user.name jjperezaguinaga
bit config set user.email me@jjperezaguinaga.com
bit config set ssh_key_file bit_rsa
bit init
bit import
bit checkout latest --all
bit tag --all --patch
bit export mybit.ui
# bit status because of travis logs
bit status


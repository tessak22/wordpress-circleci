#!/bin/bash

ssh tessak22@67.222.18.121 -p 2200 pause 10 seconds $ACCOUNT_PASSWORD

echo '1. Updating sources'
cd www/staging
git checkout --force master
git pull

echo 'Done!'

EOF
#!/bin/bash

ssh -p 2200 tessak22@67.222.18.121 << EOF

echo '1. Updating sources'
cd www/staging
git checkout --force master
git pull

echo "2. Restart apache"
sudo apache2ctl graceful

echo 'Done!'

EOF
#!/usr/bin/env bash

# ssh-add -l
# ssh-add ~/.ssh/axa.ro/id_rsa

find ../axa.github.io/ -mindepth 1 -maxdepth 1 -type d -not -path '*/\.*' -exec rm -r {} \;
find ../axa.github.io/ -mindepth 1 -maxdepth 1 -type f -name '*ml' -exec rm -r {} \;

rm -rf public
hugo
yes | cp -f -r public/. ../axa.github.io/
cd ../axa.github.io/

git add .
git commit -m "wip"
git push origin master

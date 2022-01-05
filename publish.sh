#!/usr/bin/env bash

# ssh-add -l
# ssh-add ~/.ssh/axaneamului.ro/id_ed25519

find ../axaneamului.github.io/ -mindepth 1 -maxdepth 1 -type d -not -path '*/\.*' -exec rm -r {} \;
find ../axaneamului.github.io/ -mindepth 1 -maxdepth 1 -type f -name '*ml' -exec rm -r {} \;

rm -rf public
hugo
yes | cp -f -r public/. ../axaneamului.github.io/
cd ../axaneamului.github.io/

git add .
git commit -m "wip"
git push origin master

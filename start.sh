#!/usr/bin/env bash

# cd themes/hugo-theme-bootstrap
# rm node_modules
# npm install
# npm update

clear
rm -rf ./public
hugo server -D --port=8891

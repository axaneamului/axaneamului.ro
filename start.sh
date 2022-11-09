#!/usr/bin/env bash

# theme: hugo-theme-bootstrap-0.62.0.zip
# cd themes/hugo-theme-bootstrap
# rm node_modules
# npm install
# npm update

clear
rm -rf ./public
hugo server -D --port=8891

#!/usr/bin/env bash

clear
rm -rf ./public
hugo server -D --port=8891 --environment production

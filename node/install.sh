#!/bin/bash

source scripts/functions.sh

info '- Installing NodeJS & NPM.'

brew install node --without-npm
echo prefix=~/.node >> ~/.npmrc
curl -L https://www.npmjs.com/install.sh | sh

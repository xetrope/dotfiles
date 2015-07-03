#!/bin/bash

source scripts/functions.sh

info '- Installing php_version.'
brew install php-version

info '- Installing PHP 5.6 & 7.0.'
brew install php56 --with-gmp
brew install php70 --with-gmp


info '- Installing Composer.'
brew install composer

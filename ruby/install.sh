#!/bin/bash

source scripts/functions.sh

info '- Installing RVM & latest Rails release.'
curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enable
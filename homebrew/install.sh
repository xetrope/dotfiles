#!/bin/bash

source scripts/functions.sh

if test ! $(which brew)
then
	info " - Installing Homebrew for you."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

info " - Installing Homebrew Cask for you."
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
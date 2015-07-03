#!/bin/bash

set -e

# Get useful functions
source scripts/functions.sh

# Install Homebrew and some usefull packages
bash homebrew/install.sh
bash homebrew/packages.sh

# Install some applications
bash homebrew/applications.sh

# Install Iterm2
bash iterm/install.sh
bash iterm/settings.sh

# Install Spectacle
bash spectacle/install.sh
bash spectacle/settings.sh

# Install Ruby
bash ruby/install.sh

# Install PHPBrew
bash php/install.sh

# Configure OSX
bash osx/settings.sh

# Copy dotfiles
install_dotfiles

# Because this installation switch the shell
# We need to launch it at the end
user '- Do you want Oh My Zsh? (Y/n) '
read -n 1 choice
printf "\r"

if [[ $choice =~ ^[Yy]$ ]]
then
	info '- Installing Oh My Zsh'
	
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
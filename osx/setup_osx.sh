#!/bin/sh

## setup a new OSX machine 

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# homebrew-cask
brew tap phinze/homebrew-cask
brew install mas

# development
brew cask install iterm2
brew cask install visual-studio-code

# tools
brew install docker
brew install jq # reads json on cli
brew install wget
brew install fzf


# browser
brew cask install firefox
brew cask install google-chrome
brew install git-extras

# other
brew cask install rectangle
brew cask install spotify
brew cask install tomighty

# copy over bash profile
cp .bashrc ~/.bashrc

# install some bash tools
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

# install dev tools
brew install node

# installing GCP
curl https://sdk.cloud.google.com | bash

#!/bin/sh

## setup a new OSX machine 

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# homebrew-cask
brew tap phinze/homebrew-cask
brew install brew-cask
brew install mas

# development
brew cask install iterm2
brew cask install source-tree
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install postman

# tools
brew install docker
brew install docker-compose
brew install jq # reads json on cli
brew install wget
brew install fzf

## install docker for mac
brew cask install docker

# browser
brew cask install firefox
brew cask install google-chrome
brew cask install google-chrome-canary
brew install git-extras

# other
brew cask install spectacle
brew cask install dropbox
brew cask install skype
brew cask install spotify
brew cask install bitbar
brew cask install tomighty

# copy over bash profile
cp .bashrc ~/.bashc

# install some bash tools
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it

# install dev tools
brew install node
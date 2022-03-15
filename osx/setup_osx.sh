#!/bin/sh

## setup a new OSX machine 

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# homebrew-cask
brew install mas

# development
brew install --cask visual-studio-code


# tools
brew install docker
brew install jq # reads json on cli
brew install wget
brew install fzf


# browser
brew install --cask  firefox
brew install --cask google-chrome
brew install git-extras
brew install gh

# other
brew install --cask rectangle
brew install --cask spotify
brew install --cask tomighty

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install dev tools
brew install python@3.9
brew install node
brew install terraform
brew install pre-commit gawk terraform-docs tflint

# installing GCP
curl https://sdk.cloud.google.com | bash -y
echo PATH=$PATH:/Users/$USER/google-cloud-sdk/bin/ >> ~/.zshrc

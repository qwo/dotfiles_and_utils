#!/bin/sh

## setup a new OSX machine 

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# homebrew-cask
brew install mas


# unix_tools
brew install docker
brew install jq # reads json on cli
brew install wget
brew install fzf
brew install git-extras
brew install gh

# browser
brew install --cask  firefox
brew install --cask google-chrome

# apps / # development
brew install --cask visual-studio-code
brew install --cask obsidian
brew install --cask rectangle
brew install --cask spotify
brew install --cask tomighty

## uses mas to install from MAC APP STORE
# install amphetamine # keeps your computer awake # https://apps.apple.com/us/app/amphetamine/id937984704?mt=12
mas install 937984704

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

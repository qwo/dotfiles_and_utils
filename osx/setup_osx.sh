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
brew install coreutils

# browser
brew install --cask firefox
brew install --cask google-chrome

# apps / # development
brew install --cask visual-studio-code
brew install --cask obsidian
brew install --cask rectangle
brew install --cask spotify
brew install --cask tomighty ### NOT VERIFIED UNFORTUNATELY
brew install --cask signal
brew install tailscale

## uses mas to install from MAC APP STORE
mas install 937984704 # install amphetamine # keeps your computer awake # https://apps.apple.com/us/app/amphetamine/id937984704?mt=12
mas install 1470499037 # https://apps.apple.com/us/app/tailscale/id1470499037

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install dev tools
brew install python@3.9
brew install node
brew install warrensbox/tap/tfswitch # use to install terraform `tfswtich 0.13.7`
brew install pre-commit gawk terraform-docs tflint
brew install poetry

# installing GCP
curl https://sdk.cloud.google.com | bash
echo PATH=$PATH:/Users/$USER/google-cloud-sdk/bin/ >> ~/.zshrc


#install 
## install terraform
## install java
## install git-blame 
## install python
## install autodoc 
## python docs https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring
## pythonpath 
## python indent https://marketplace.visualstudio.com/items?itemName=KevinRose.vsc-python-indent
## python extention pack https://marketplace.visualstudio.com/items?itemName=donjayamanne.python-extension-pack
## AI PILOT https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode
## Rainbow CSV https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv


## BLACK FORMATTING / AUTOPEP8 ??


### OSX
## RE-ARRANGE MY MAC KEYBOARD STUFF

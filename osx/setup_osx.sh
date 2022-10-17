#!/bin/sh

## setup a new OSX machine 

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"  # should check this 

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# homebrew for macos apps # install from app store 
brew install mas
## uses mas to install from MAC APP STORE
mas install 937984704 # install amphetamine # keeps your computer awake # https://apps.apple.com/us/app/amphetamine/id937984704?mt=12
mas install 1470499037 # https://apps.apple.com/us/app/tailscale/id1470499037
mas install 1295203466 # Windows RDP OSX https://apps.apple.com/us/app/microsoft-remote-desktop/id1295203466?mt=12


# essentials / system libraries / tools
brew install coreutils
brew install --cask google-chrome
# brew install java # if you need the JDK 
brew install wget

# git tools 
brew install git-extras
brew install gh
brew install git-blame
brew install pre-commit 

# desktop software development
brew install --cask visual-studio-code # essential 
# brew install --cask dash # dont use this much anymore 
brew install --cask dbeaver-community
brew install --cask rectangle

# programming language / dependencies 
brew install python@3.9 poetry
# brew install node
brew install terraform terraform-docs tflint warrensbox/tap/tfswitch 

# container tools  
brew install lima # combo tool to do containerization on MACOS with nerdctl
brew install nerdctl
brew install --cask rancher

# install unix applications / config tools 
# brew install antigen # not maintained anymore, for ZSH plugin management, find base alternative
brew install fswatch # filewatch tool that can be used in combo with rsync 
brew install jq # reads json on cli
# brew install saulpw/vd/visidata # cool visualizing data tabular!

# CLI helpers / tools 
brew install fzf
brew install gawk

# installing cloud tools and vendor tools 
curl https://sdk.cloud.google.com | bash
brew install awscli # AWS CLI

echo PATH=$PATH:/Users/$USER/google-cloud-sdk/bin/ >> ~/.zshrc 
echo PATH=$PATH:/Users/$USER/google-cloud-sdk/bin/ >> ~/.bashrc 


# copy dotfile configs
cp -r .* ~/
cp -r ../gitconfig ~/.gitconfig

#install 
## install terraform
## install git-blame 
## install python
## install autodoc 
## python docs https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring
## pythonpath 
## python indent https://marketplace.visualstudio.com/items?itemName=KevinRose.vsc-python-indent
## python extention pack https://marketplace.visualstudio.com/items?itemName=donjayamanne.python-extension-pack
## AI PILOT https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode
## Rainbow CSV https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv
# visual studio code


# desktop apps 
brew install --cask bitwarden
brew install --cask firefox
brew install --cask obsidian
brew install --cask signal
brew install --cask spotify
brew install --cask tomighty ### NOT VERIFIED UNFORTUNATELY
brew install tailscale



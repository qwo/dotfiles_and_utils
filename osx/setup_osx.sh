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


## setup dotfiles
cp -r .* ~/
cp -r ../gitconfig/.* ~/


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
brew install node n
brew install terraform terraform-docs tflint warrensbox/tap/tfswitch 

# container tools  
brew install buildkit
brew install docker-compose docker-credential-helper
brew install lima # combo tool to do containerization on MACOS with nerdctl
brew install nerdctl
brew install --cask rancher

# data
brew install postgresql

# install unix applications / config tools 
# brew install antigen # not maintained anymore, for ZSH plugin management, find base alternative
brew install fswatch # filewatch tool that can be used in combo with rsync 
brew install jq # reads json on cli
# brew install saulpw/vd/visidata # cool visualizing data tabular!

# CLI helpers / tools 
brew install zoxide
brew install tmux
brew install fzf
brew install gawk

# installing cloud tools and vendor tools 
# --disable-prompts Disables prompts. Prompts are always disabled when there is no controlling tty.
curl https://sdk.cloud.google.com | bash -s -- --disable-prompts 
brew install awscli # AWS CLI

source ~/.zshrc

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
brew install --cask brave-browser
brew install --cask obsidian
brew install --cask signal
brew install --cask spotify
brew install --cask tomighty ### NOT VERIFIED UNFORTUNATELY
brew install tailscale

## optional
# brew install --cask intellij-idea
# brew install --cask datagrip

source ~/.zshrc

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

# install plugins
git clone https://github.com/reegnz/jq-zsh-plugin --branch v0.4.0 --single-branch ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/jq-zsh-plugin
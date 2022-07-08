#!/bin/bash


sudo apt-get update -y 
# install system libraries
sudo apt-get install curl wget git -y 


# install python libraries 
curl -sSL https://install.python-poetry.org > install_poetry && python3 install_poetry --version 1.2.0b2


# install node libraries
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install 16
nvm use 16

# change user permissions

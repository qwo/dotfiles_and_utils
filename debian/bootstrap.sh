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

# NOTE: These instructions only work for 64 bit Debian-based
# Linux distributions such as Ubuntu, Mint etc.

# 1. Install our official public software signing key
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

# 2. Add our repository to your list of repositories
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

# 3. Update your package database and install signal
sudo apt update && sudo apt install signal-desktop
#!/bin/bash

# install packages
apt-get install i3 
apt-get install xclip sel 

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
# add current user to docker group 
# sudo usermod -aG docker stanleyz
usermod -aG docker $USER

chown -R  $USER:$GROUP /usr/local/


# AWS-CLI
##export AWS_ACCESS_KEY_ID="<id>"
##export AWS_SECRET_ACCESS_KEY="<key>"
##export AWS_DEFAULT_REGION="<region>"
docker pull mesosphere/aws-cli
curl -o /usr/local/bin/aws https://raw.githubusercontent.com/mesosphere/aws-cli/master/aws.sh && chmod a+x /usr/local/bin/aws

# Terraform 
export TF_VERSION=0.11.13
https://releases.hashicorp.com/terraform/$TF_VERSION/terraform_$TF_VERSION_linux_amd64.zip
unzip terraform_$TF_VERSION_linux_amd64.zip
terraform_$TF_VERSION_linux_amd64.zip


# Setup FlatPak https://flatpak.org/setup/Debian/
apt install flatpak
apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


# Docker installation 
sudo apt-get remove docker docker-engine docker.io
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Add to non-root Docker land
sudo usermod -aG docker $USER

# application land
flatpak install -y flathub com.visualstudio.code

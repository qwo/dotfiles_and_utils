
#!/bin/bash

# This script is used to install the Debian Cloud Image on a local disk.

SERVER_ADDRESS=$1 # IP address of the server

ssh-keygen -t rsa -C "root@$SERVER_ADDRESS" -f ~/.ssh/$SERVER_ADDRESS/id_rsa -N ""
ssh-copy-id root@$SERVER_ADDRESS # Copy the SSH key to the server

# cat ~/.ssh/id_rsa.pub | ssh user@hostname 'cat >> .ssh/authorized_keys -'

apt-get update -y 

apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    vim

# docker installation
apt-get remove docker docker-engine docker.io containerd runc -y 
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin



# create docker user group
groupadd docker
usermod -aG docker $USER

## install tailscale 
curl -fsSL https://tailscale.com/install.sh | sh

# firewall
## does not work
# sudo apt-get install ufw -y 

# sudu ufw enable
# sudo ufw logging on

# sudo ufw allow from 10.0.0.0/24
# sudo ufw allow from 10.0.0.0/24 proto tcp to any port 22


# install caddy
sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
sudo apt update
sudo apt install caddy
sudo setcap CAP_NET_BIND_SERVICE=+eip $(which caddy)
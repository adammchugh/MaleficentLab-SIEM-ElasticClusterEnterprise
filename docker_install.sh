#!/bin/bash
sudo apt-get update -y
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo groupadd docker
sudo usermod -aG docker ${USER}
sudo groupmod -g 1010 foo
newgrp docker
sudo sysctl -w vm.max_map_count=262144
sudo sysctl -p
sudo mkdir /mnt/data
sudo chown -R 1000:1000 /mnt/data/
sysctl -w vm.max_map_count=262144

echo "bash <(curl -fsSL https://download.elastic.co/cloud/elastic-cloud-enterprise.sh) install --coordinator-host <hostname of first host> --roles-token 'TOKEN'"

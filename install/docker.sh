#!/bin/sh

curl -fsSL https://download.docker.com/linux/debian/gpg \
	| sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Replace bullseye with $(lsb_release -cs) when the repo is ready for the new testing version.
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  bullseye stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose docker-compose-plugin

#!/bin/bash

sudo apt-get install -y curl
sudo apt-get install -y software-properties-common
sudo apt-get install -y gnupg2 seahorse
sudo apt-get install -y apt-file
sudo apt-get install -y zsh-common tmux vim

# Update shell of user to zsh
echo "Updating $USER's shell to zsh"
[ -e /usr/bin/zsh ] && sudo usermod -s /usr/bin/zsh $USER


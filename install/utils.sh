#!/bin/bash

sudo apt-get install -y curl
sudo apt-get install -y software-properties-common
sudo apt-get install -y gnupg2 seahorse
sudo apt-get install -y apt-file
sudo apt-get install -y zsh-common tmux vim
sudo apt-get install -y meld
sudo apt-get install -y python3-full
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    lsb-release

# setup py3 venv
mkdir -p $HOME/opt/py3venv
python3 -m venv $HOME/opt/py3venv
echo "# PY3 venv paths" >> $HOME/.dotfiles/shell/.paths
export PATH=$HOME/opt/py3venv/bin:$PATH >> $HOME/.dotfiles/shell/.paths

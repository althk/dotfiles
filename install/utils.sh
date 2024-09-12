#!/bin/bash

sudo apt-get install -y curl git git-flow
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
sudo apt install fonts-firacode fonts-lato fonts-noto-color-emoji \
	fonts-noto-mono fonts-roboto fonts-dejavu fonts-open-sans
sudo apt install papirus-icon-theme materia-gtk-theme

# setup py3 venv
PY3VENV="$HOME/opt/py3venv"
mkdir -p $PY3VENV
python3 -m venv $PY3VENV
echo '# PY3 venv' >> $HOME/.dotfiles/shell/.paths
echo 'source $PY3VENV/bin/activate' >> $HOME/.dotfiles/shell/.paths
echo '' >> $HOME/.dotfiles/shell/.paths

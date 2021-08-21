#!/bin/bash

curl -sL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo apt-get install -y build-essential

echo '# Node paths' >> "${DOTFILES_DIR}/shell/.paths"
echo 'export PATH="$PATH:$HOME/opt/npm-global/bin"' >> "${DOTFILES_DIR}/shell/.paths"
echo '' >> "${DOTFILES_DIR}/shell/.paths"

source "${DOTFILES_DIR}/shell/.paths"


#!/bin/bash

sudo apt-get install apt-transport-https
sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'

sudo apt-get update
sudo apt-get install dart

echo '# Dart paths' >> "${DOTFILES_DIR}/shell/.env"
echo 'export DART_HOME="/usr/lib/dart"' >> "${DOTFILES_DIR}/shell/.env"
echo 'export PATH="$PATH:$DART_HOME/bin"' >> "${DOTFILES_DIR}/shell/.env"
echo '' >> "${DOTFILES_DIR}/shell/.env"

source "${DOTFILES_DIR}/shell/.env"

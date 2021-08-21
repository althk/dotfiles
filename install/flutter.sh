#!/bin/bash

echo "Installing Flutter (Stable) in $HOME/opt/flutter"
git clone https://github.com/flutter/flutter.git -b stable $HOME/opt/flutter

DOTFILES_DIR="$HOME/.dotfiles"
echo '# Flutter paths' >> "${DOTFILES_DIR}/shell/.paths"
echo 'export PATH="$PATH:$HOME/opt/flutter/bin"' >> "${DOTFILES_DIR}/shell/.paths"
echo '' >> "${DOTFILES_DIR}/shell/.paths"

source "${DOTFILES_DIR}/shell/.paths"

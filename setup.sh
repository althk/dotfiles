#!/bin/bash

set -x

DOTFILES_DIR="$(dirname $0)"
# dirname resolves to '.' instead of the full path
# if the script is run from the CWD.
if [[ "${DOTFILES_DIR}" = "." ]]; then
	DOTFILES_DIR="${PWD}"
fi
echo "DOTFILES_DIR: $DOTFILES_DIR"
export DOTFILES_DIR

lh() {
  ln -svf $DOTFILES_DIR/$1 ~
}

$DOTFILES_DIR/install/utils.sh
$DOTFILES_DIR/install/golang.sh
$DOTFILES_DIR/install/dart.sh
$DOTFILES_DIR/install/vscode.sh
$DOTFILES_DIR/install/node.sh

lh rc/.zshrc
lh git/.gitconfig
lh git/.gitignore_global
lh tmux/.tmux.conf



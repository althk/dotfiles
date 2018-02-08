#!/bin/sh

set -x
set -e

DOTFILES_DIR=`dirname $0`
export DOTFILES_DIR

lh() {
  ln -svf $DOTFILES_DIR/$1 ~
}

lh rc/.zshrc
lh git/.gitconfig
lh git/.gitignore_global
lh tmux/.tmux.conf

. $DOTFILES_DIR/install/utils.sh
. $DOTFILES_DIR/install/vscode.sh
. $DOTFILES_DIR/install/node.sh
. $DOTFILES_DIR/install/golang.sh



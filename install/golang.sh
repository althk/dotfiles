#!/bin/bash

GO_VERSION="go1.22.5"  # Figure out how to keep this updated.
GO_DL_NAME="$GO_VERSION.linux-amd64.tar.gz"

export GOPATH="$HOME/.go"
export GOROOT="$HOME/opt/go"

echo "Installing golang ($GO_VERSION)"

GO_INSTALL_DIR="${GOROOT/%go/}"
[ -n "$GO_INSTALL_DIR" ] || GO_INSTALL_DIR="$HOME/opt/"

wget https://dl.google.com/go/"$GO_DL_NAME" -O "/tmp/$GO_DL_NAME"


[ -d $GO_INSTALL_DIR ] || mkdir -p $GO_INSTALL_DIR
[ -d $GO_INSTALL_DIR/go ] && rm -rf $GO_INSTALL_DIR/go 
tar -zxf "/tmp/$GO_DL_NAME" -C $GO_INSTALL_DIR


DOTFILES_DIR="$HOME/.dotfiles"
echo '# Golang paths' >> "${DOTFILES_DIR}/shell/.paths"
echo 'export GOPATH="$HOME/.go"' >> "${DOTFILES_DIR}/shell/.paths"
echo 'export GOROOT="$HOME/opt/go"' >> "${DOTFILES_DIR}/shell/.paths"
echo 'export PATH="$PATH:$GOPATH/bin:$GOROOT/bin"' >> "${DOTFILES_DIR}/shell/.paths"
echo '' >> "${DOTFILES_DIR}/shell/.paths"

source "${DOTFILES_DIR}/shell/.paths"

#!/bin/bash

GO_VERSION="go1.9.3"  # Figure out how to keep this updated.
GO_DL_NAME="$GO_VERSION.linux-amd64.tar.gz"

echo "Installing golang ($GO_VERSION)"

GO_INSTALL_DIR=`${GOROOT/%go/}`
[ -n "$GO_INSTALL_DIR" ] || GO_INSTALL_DIR="$HOME/opt/"

wget https://dl.google.com/go/"$GO_DL_NAME" -O "/tmp/$GO_DL_NAME"


[ -d $GO_INSTALL_DIR ] || mkdir -p $GO_INSTALL_DIR
tar -zxf "/tmp/$GO_DL_NAME" -C $GO_INSTALL_DIR

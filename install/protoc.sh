#!/bin/bash

PROTOC_VERSION="3.17.3"  # Figure out how to keep this updated.
PROTOC_DL_NAME="protoc-$PROTOC_VERSION-linux-x86_64.zip"

export PROTOC_BASE="$HOME/opt"

echo "Installing protoc ($PROTOC_VERSION)"

PROTOC_INSTALL_DIR="${PROTOC_BASE}/protoc-${PROTOC_VERSION}"

wget https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/${PROTOC_DL_NAME} -O /tmp/${PROTOC_DL_NAME}

[ -d $PROTOC_INSTALL_DIR ] || mkdir -p $PROTOC_INSTALL_DIR
unzip -o "/tmp/$PROTOC_DL_NAME" -d $PROTOC_INSTALL_DIR

echo "Creating symlink for ${PROTOC_INSTALL_DIR} as $PROTOC_BASE/protoc"
ln -sr $PROTOC_INSTALL_DIR $PROTOC_BASE/protoc

DOTFILES_DIR="$HOME/.dotfiles"
echo '# protoc paths' >> "${DOTFILES_DIR}/shell/.paths"
echo 'export PROTOC_PATH="$HOME/protoc"' >> "${DOTFILES_DIR}/shell/.paths"
echo 'export PATH="$PATH:$PROTOC_PATH/bin"' >> "${DOTFILES_DIR}/shell/.paths"
echo '' >> "${DOTFILES_DIR}/shell/.paths"

source "${DOTFILES_DIR}/shell/.paths"

#!/bin/bash

ETCD_VER=v3.5.4

# choose either URL
GOOGLE_URL=https://storage.googleapis.com/etcd
GITHUB_URL=https://github.com/etcd-io/etcd/releases/download
DOWNLOAD_URL=${GOOGLE_URL}

export ETCD_HOME="$HOME/opt/etcd"

echo "Installing etcd $ETCD_VER"

rm -f /tmp/etcd-${ETCD_VER}-linux-amd64.tar.gz

curl -L ${DOWNLOAD_URL}/${ETCD_VER}/etcd-${ETCD_VER}-linux-amd64.tar.gz -o /tmp/etcd-${ETCD_VER}-linux-amd64.tar.gz
rm -rf ${ETCD_HOME} && mkdir -p ${ETCD_HOME}
tar xzf /tmp/etcd-${ETCD_VER}-linux-amd64.tar.gz -C ${ETCD_HOME} --strip-components=1
rm -f /tmp/etcd-${ETCD_VER}-linux-amd64.tar.gz

${ETCD_HOME}/etcd --version
${ETCD_HOME}/etcdctl version
${ETCD_HOME}/etcdutl version

DOTFILES_DIR="$HOME/.dotfiles"
echo '# etcd paths' >> "${DOTFILES_DIR}/shell/.paths"
echo 'export ETCD_HOME=$HOME/opt/etcd' >> "${DOTFILES_DIR}/shell/.paths"
echo 'export PATH="$PATH:$ETCD_HOME"' >> "${DOTFILES_DIR}/shell/.paths"
echo '' >> "${DOTFILES_DIR}/shell/.paths"

source "${DOTFILES_DIR}/shell/.paths"

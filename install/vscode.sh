#!/bin/sh

curl -sL https://go.microsoft.com/fwlink/?LinkID=760868 -o /tmp/vscode.deb | sudo -E dpkg -i /tmp/vscode.deb
sudo apt-get update
sudo apt-get install -f


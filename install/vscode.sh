#!/bin/bash

curl -sL https://go.microsoft.com/fwlink/?LinkID=760868 -o /tmp/vscode.deb
if [[ -f /tmp/vscode.deb ]]; then
	sudo -E dpkg -i /tmp/vscode.deb
	sudo apt-get update
	sudo apt-get install -f
else
	echo "Could not download vscode"
fi


#!/bin/bash

# Check priviledges
if [ "$EUID" -ne 0 ]; then
	echo "Please run this script with root priviledges."
	exit 1
fi

# Install requirements
xargs -a requirements.txt apt install -y

# Enable service
sudo cp stone.service /etc/systemd/system
systemctl enable stone.service

echo "Done!"

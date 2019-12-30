#!/usr/bin/env bash
set -e

sudo bash -c "echo deb https://download.virtualbox.org/virtualbox/debian bionic contrib >> /etc/apt/sources.list"
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt-get install -y virtualbox-6.1
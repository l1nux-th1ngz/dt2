#!/bin/bash

# LibreOffice
echo "deb http://ppa.launchpad.net/libreoffice/ppa/ubuntu focal main" | sudo tee /etc/apt/sources.list.d/libreoffice.list
echo "deb-src http://ppa.launchpad.net/libreoffice/ppa/ubuntu focal main" | sudo tee -a /etc/apt/sources.list.d/libreoffice.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1378B444

wait

# Update package lists
sudo apt update

# Install LibreOffice
sudo apt install libreoffice=1:7.6.4-0ubuntu0.20.04.2

sleep 1

# Set up upgrades
sudo apt install unattended-upgrades
echo 'libreoffice libreoffice-common libreoffice-core' | sudo tee /etc/apt/apt.conf.d/50unattended-upgrades

sleep 1

# Enable updates
sudo dpkg-reconfigure --priority=low unattended-upgrades

# Reboot
sudo reboot

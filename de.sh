#!/bin/bash

# Install Budgie Desktop
sudo apt-get install -y budgie-desktop
sudo apt install --install-suggests budgie-desktop -y
sudo apt-get install -y synaptic
sudo apt-get install -y xdg-user-dirs
sudo apt-get install -y xdg-user-dirs-gtk
sudo apt-get install -y kitty
sudo apt-get install -y terminator

# Update user directory
xdg-user-dirs-update

# Install SDDM with recommended packages excluded
sudo apt install --no-install-recommends sddm

# Enable SDDM service to start at boot
sudo systemctl enable sddm

# Clone and install the Delicious SDDM theme
git clone https://github.com/stuomas/delicious-sddm-theme.git && cd delicious-sddm-theme && ./install.sh

wait

# Reboot the system
sudo reboot

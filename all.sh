#!/bin/bash

# Install necessary packages
sudo apt-get install -y nala brightnessctl playerctl

# Update the system
sudo apt-get update && sudo apt-get upgrade -y

# Install all .deb files in the current directory
for file in *.deb
do
    echo "Installing $file"
    sudo dpkg -i "$file" || sudo apt-get install -fy
done

echo "All .deb files have been installed successfully."

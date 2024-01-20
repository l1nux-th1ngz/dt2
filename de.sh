#!/bin/bash

# Install Budgie Desktop
sudo apt-get install -y budgie-desktop
sudo apt install --install-suggests budgie-desktop -y

wait

# Install essential packages
sudo apt-get install -y build-essential nano micro nala brightnessctl playerctl dpkg synaptic neofetch htop btop cava xdg-user-dirs xdg-user-dirs-gtk dialog mtools dosfstools gvfs gvfs-backends policykit-1-gnome network-manager network-manager-gnome thunar thunar-archive-plugin thunar-volman file-roller tilix alacritty terminator kitty alacritty pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer neofetch curl fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus picom rofi dunst libnotify-bin unzip zip fonts-font-awesome fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus geany geany-plugins pdfarranger numix-icon-theme numix-gtk-theme dmz-cursor-theme intel-microcode flatpak easyssh plymouth transmission-gtk obs-studio mkvtoolnix-gui mpv qimgv notepadqq firefox-esr redshift cpu-x udns-utils whois curl

wait

# Enable Flatpak and add Flathub repository
sudo systemctl enable flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo systemctl enable sddm

# Update user directory
xdg-user-dirs-update

# Install SDDM with recommended packages excluded
sudo apt install --no-install-recommends sddm

# Enable SDDM service to start at boot
sudo systemctl enable sddm

git clone https://github.com/stuomas/delicious-sddm-theme.git && cd delicious-sddm-theme && ./install.sh

wait

# reboot
sudo reboot

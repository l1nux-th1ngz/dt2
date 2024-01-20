#!/bin/bash

# Install some software
sudo apt-get install -y build-essential nano micro nala brightnessctl playerctl dpkg synaptic apt-transport-https lsb-release ca-certificates
sudo apt-add-repository "deb http://deb.debian.org/debian $(lsb_release -cs) main"
sudo apt-get update
sudo apt-get install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid
xdg-user-dirs-update
mkdir ~/Screenshots/
sudo apt-get install -y policykit-1-gnome network-manager network-manager-gnome
sudo apt-get install -y thunar thunar-archive-plugin thunar-volman file-roller
sudo apt-get install -y tilix alacritty terminator kitty alacritty
sudo apt-get install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer
sudo apt-get install -y neofetch
sudo apt-get install -y network-manager network-manager-gnome 
sudo apt-get install -y feh xdg-user-dirs xdg-user-dirs-gtk
sudo apt-get install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus
sudo apt-get install -y picom rofi dunst libnotify-bin unzip zip
sudo apt-get install -y numlockx geany geany-plugin-addons geany-plugin-git-changebar geany-plugin-overview geany-plugin-spellcheck geany-plugin-treebrowser geany-plugin-vimode scrot evince pdfarranger transmission-gtk gimp obs-studio mkvtoolnix-gui
sudo apt-get install -y mpv figlet qimgv l3afpad galculator redshift cpu-x galculator wmctrl dnsutils whois curl
sudo apt-get install -y sddm sddm-gtk-greeter-settings
sudo systemctl enable sddm
git clone https://github.com/stuomas/delicious-sddm-theme.git &&
cd delicious-sddm-theme &&
./install.sh
sudo apt-get install -y xorg xbacklight xbindkeys xvkbd xinput xorg-dev
sudo apt-get install -y build-essential 
sudo apt-get install -y intel-microcode flatpak easyssh 
sudo apt-get install -y mtools dosfstools acpi acpid timeshift avahi-daemon gvfs-backends
sudo systemctl enable acpid
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo systemctl enable avahi-daemon
sudo apt-get install -y neofetch htop btop cava
sudo apt-get install -y exa gnome-software-plugin-flatpak 
sudo apt-get install -y firefox-esr 
sudo apt-get install -y unzip file-roller gedit network-manager-openvpn-gnome 
sudo apt-get install -y fonts-font-awesome fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus
xdg-user-dirs-update
sudo apt-get install -y numix-icon-theme numix-gtk-theme dmz-cursor-theme
source ~/debian-installers/nerdfonts.sh
curl -fsSL https://get.casaos.io | sudo bash

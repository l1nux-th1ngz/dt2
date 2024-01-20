#!/bin/bash

# Update package list
sudo apt-get update

# Install required packages
sudo apt-get install -y build-essential nano micro nala brightnessctl playerctl dpkg synaptic apt-transport-https lsb-release ca-certificates \
    dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager \
    thunar thunar-archive-plugin thunar-volman file-roller \
    tilix alacritty terminator kitty alacritty \
    pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer \
    neofetch \
    policykit-1-gnome network-manager network-manager-gnome \
    feh xdg-user-dirs xdg-user-dirs-gtk \
    fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus \
    picom rofi dunst libnotify-bin unzip zip \
    numlockx geany geany-plugin-addons geany-plugin-git-changebar geany-plugin-overview geany-plugin-spellcheck geany-plugin-treebrowser geany-plugin-vimode scrot evince pdfarranger transmission-gtk gimp obs-studio mkvtoolnix-gui \
    mpv figlet qimgv l3afpad galculator redshift cpu-x galculator wmctrl udns-utils whois curl \
    sddm sddm-gtk-greeter-settings

# Enable services
sudo systemctl enable avahi-daemon acpid sddm

# Set up user directories
xdg-user-dirs-update
mkdir ~/Screenshots/

# Clone and install SDDM theme
git clone https://github.com/stuomas/delicious-sddm-theme.git &&
cd delicious-sddm-theme &&
./install.sh

# Additional installations
sudo apt-get install -yy xorg xbacklight xbindkeys xvkbd xinput xorg-dev \
    build-essential \
    intel-microcode flatpak easyssh \
    mtools dosfstools acpi acpid timeshift avahi-daemon gvfs-backends -yy \
    neofetch htop btop cava \
    exa nome-software-plugin-flatpak \
    firefox-esr -yy \
    unzip file-roller gedit network-manager-openvpn-gnome -yy \
    fonts-font-awesome fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus  -yy \
    numix-icon-theme numix-gtk-theme dmz-cursor-theme -yy

# Enable Flatpak and Avahi services
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo systemctl enable avahi-daemon

# Install Nerd Fonts
source ~/debian-installers/nerdfonts.sh
curl -fsSL https://get.casaos.io | sudo bash

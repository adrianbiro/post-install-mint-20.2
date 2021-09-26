#!/bin/bash
#set -e 
########################################################################
#
# 	Author: Adrián Bíro
#
########################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
########################################################################
clear
echo "#################################################################"
echo "Post-installation script for Linux Mint 20.2."
echo "#################################################################"
echo "#################################################################"
echo "This takes some time,do not panic if the progress bar seemingly" 
echo "does not move, it will."
echo "#################################################################"
sudo apt-get -y update
# Changing timezone to Bratislava. To find another use $ timedatectl list-timezones
sudo timedatectl set-timezone Europe/Bratislava
#sudo timedatectl set-timezone Europe/Prague
#sudo timedatectl set-timezone Europe/Vienna
#adding keyboard layouts

# Remove apt packages  
sudo apt remove -y firefox
sudo apt purge -y --autoremove libreoffice-common
echo "#################################################################"
echo "###################    Packages removed   #######################"
echo "#################################################################"
# Install apt packages
sudo apt install -y git
sudo apt install -y meld
sudo apt install -y virtualbox
sudo apt install -y htop
sudo apt install -y vim
sudo apt install -y geany
sudo apt install -y emacs
sudo apt install -y gparted
# Clipboard manager
sudo apt install -y diodon
# Window managers
sudo apt install -y Awesome
#sudo apt install -y dwm
#
# Some fonts
echo "#################################################################"
echo "Fonts for better compatibility with Microsoft Office fonts"
echo "#################################################################"
# Carlito is Sans-serif font metric-compatible with Calibri font.
sudo apt install -y fonts-crosextra-carlito
# Caladea serif font typeface family, metric-compatible with Cambria font.
sudo apt install -y fonts-crosextra-caladea
# Libertine Fonts is a collection of libre multilingual fonts. Furthermore, it is stylish and contains some fancy features for the German language.
sudo apt install -y fonts-linuxlibertine
#
# Package fonts-liberation contains free variants of the Times, Arial an Courier fonts
#sudo apt install -y ttf-mscorefonts-installer
#
echo "#################################################################"
echo "################    Instalation almost Done   ###################"
echo "#################################################################"
# Re-enabling Snap
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt install -y snapd
sudo snap install -y authy
# Flatpak packages 
flatpak install -y com.calibre_ebook.calibre
flatpak install -y org.mozilla.firefox
flatpak install -y org.libreoffice.LibreOffice
flatpak install -y org.signal.Signal
flatpak install -y bitwarden

echo "#################################################################"
echo "#################### !!!Reboot now!!! ###########################"
echo "#################################################################"

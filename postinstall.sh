#!/bin/bash
set -e 
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
# Changing timezone to Bratislava. To find another use $ "timedatectl list-timezones |less" and search with "/" name_of_zone and quit with "q"
sudo timedatectl set-timezone Europe/Bratislava
#sudo timedatectl set-timezone Europe/Prague
#sudo timedatectl set-timezone Europe/Vienna
# Adding keyboard layouts to see another use $ "cat /usr/share/X11/xkb/rules/xorg.lst | less" fr for French, es for Spanish
setxkbmap -option grp:switch,grp:alt_shift_toggle us,sk
# Configuring Theme settings.
gsettings set org.cinnamon.theme name "Mint-Y-Red"
gsettings set org.cinnamon.desktop.interface gtk-theme "Mint-Y-Red"
gsettings set org.cinnamon.desktop.wm.preferences theme "Mint-Y-Red"
gsettings set org.cinnamon.desktop.interface icon-theme "Mint-Y-Red"

# Panel applets, to see your applet settings write "gsettings get org.cinnamon enabled-applets"
gsettings set org.cinnamon enabled-applets
['panel1:left:0:menu@cinnamon.org:14', 'panel1:right:13:show-desktop@cinnamon.org:15', 'panel1:left:1:grouped-window-list@cinnamon.org:16', 'panel1:right:2:systray@cinnamon.org:17', 'panel1:right:3:xapp-status@cinnamon.org:18', 'panel1:right:4:notifications@cinnamon.org:19', 'panel1:right:5:removable-drives@cinnamon.org:21', 'panel1:right:7:keyboard@cinnamon.org:22', 'panel1:right:9:network@cinnamon.org:24', 'panel1:right:10:sound@cinnamon.org:25', 'panel1:right:6:power@cinnamon.org:26', 'panel1:right:12:calendar@cinnamon.org:27', 'panel1:right:0:expo@cinnamon.org:28', 'panel1:right:1:workspace-switcher@cinnamon.org:29']

# Remove apt packages  
#sudo apt remove -y firefox
echo "#################################################################"
echo "###################    Packages removed   #######################"
echo "#################################################################"
# Install apt packages
sudo apt install -y git
sudo apt install -y meld
sudo apt install -y htop
sudo apt install -y vim
# Clipboard manager
sudo apt install -y diodon

echo "#################################################################"
echo "################    Instalation almost Done   ###################"
echo "#################################################################"

flatpak install -y com.calibre_ebook.calibre
flatpak install -y bitwarden


echo "#################################################################"
echo "#################### !!!Reboot now!!! ###########################"
echo "#################################################################"

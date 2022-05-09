#!/bin/bash
#set -e

#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

echo
tput setaf 2
echo "################################################################"
echo "################### AmOs Software to install"
echo "################################################################"
tput sgr0
echo

if grep -q amos-repo /etc/pacman.conf; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "################ AmOs repos are already in /etc/pacman.conf"
  echo "################################################################"
  tput sgr0
  echo
  else
  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Getting  repos for AmOs"
  echo "################################################################"
  tput sgr0
  echo
  sh arch/get-amos-repos.sh
  sudo pacman -Sy
fi

sudo pacman -S --noconfirm --needed amos-xfce4-git
sudo pacman -S --noconfirm --needed amos-xfce-styles
sudo pacman -S --noconfirm --needed amos-xfce-styles-notebook
sudo pacman -S --noconfirm --needed amos-pywal-conky-git
sudo pacman -S --noconfirm --needed amos-sweet-icons-git
sudo pacman -S --noconfirm --needed amos-dconf-git
sudo pacman -S --noconfirm --needed amos-icon-pack-git
sudo pacman -S --noconfirm --needed amos-plank-themes-git
sudo pacman -S --noconfirm --needed amos-config-git
sudo pacman -S --noconfirm --needed amos-gtk-themes-git
sudo pacman -S --noconfirm --needed amos-neofetch-config-git
sudo pacman -S --noconfirm --needed zsh-theme-powerlevel10k-git
sudo pacman -S --noconfirm --needed ttf-meslo-nerd-font-powerlevel10k
sudo pacman -S --noconfirm --needed bibata-cursor-theme
sudo pacman -S --noconfirm --needed bibata-extra-cursor-theme
sudo pacman -S --noconfirm --needed bibata-rainbow-cursor-theme
sudo pacman -S --noconfirm --needed kdocker
sudo pacman -S --noconfirm --needed kshutdown
sudo pacman -S --noconfirm --needed win10-icons-git
sudo pacman -S --noconfirm --needed win11-icons-git
sudo pacman -S --noconfirm --needed dracular-icons-git
sudo pacman -S --noconfirm --needed patool
sudo pacman -S --noconfirm --needed bottles
sudo pacman -S --noconfirm --needed xscreensaver
sudo pacman -S --noconfirm --needed imagewriter
sudo pacman -S --noconfirm --needed lib32-nvidia-utils
sudo pacman -S --noconfirm --needed tela-circle-icon-theme-git
sudo pacman -S --noconfirm --needed linux-zen
sudo pacman -S --noconfirm --needed linux-zen-headers
sudo pacman -S --noconfirm --needed gamemode
sudo pacman -S --noconfirm --needed lib32-gamemode
sudo pacman -S --noconfirm --needed samsung-unified-driver-common
sudo pacman -S --noconfirm --needed samsung-unified-driver-printer
sudo pacman -S --noconfirm --needed samsung-unified-driver-scanner
sudo pacman -S --noconfirm --needed spotrec
sudo pacman -S --noconfirm --needed amos-pixmaps-git
sudo pacman -S --noconfirm --needed amos-root-git
sudo pacman -S --noconfirm --needed steam
sudo pacman -S --noconfirm --needed steam-fonts
sudo pacman -S --noconfirm --needed steam-tweaks
sudo pacman -S --noconfirm --needed steam-native-runtime
sudo pacman -S --noconfirm --needed smplayer
sudo pacman -S --noconfirm --needed smplayer-skins
sudo pacman -S --noconfirm --needed smplayer-themes
sudo pacman -S --noconfirm --needed
sudo pacman -S --noconfirm --needed
sudo pacman -S --noconfirm --needed
sudo pacman -S --noconfirm --needed
sudo pacman -S --noconfirm --needed
sudo pacman -S --noconfirm --needed
sudo pacman -S --noconfirm --needed
sudo pacman -S --noconfirm --needed
sudo pacman -S --noconfirm --needed
sudo pacman -S --noconfirm --needed
sudo pacman -S --noconfirm --needed



echo
tput setaf 2
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
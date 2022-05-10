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

func_install() {
    if pacman -Qi $1 &> /dev/null; then
        tput setaf 2
        echo "###############################################################################"
        echo "################## The package "$1" is already installed"
        echo "###############################################################################"
        echo
        tput sgr0
    else
        tput setaf 3
        echo "###############################################################################"
        echo "##################  Installing package "  $1
        echo "###############################################################################"
        echo
        tput sgr0
        sudo pacman -S --noconfirm --needed $1
    fi
}

echo
tput setaf 2
echo "################################################################"
echo "################### Install leftwm"
echo "################################################################"
tput sgr0
echo


list=(
amos-leftwm-git
leftwm-dev-git
leftwm-theme-git
lxappearance
nerd-fonts-source-code-pro
picom
polybar
rofi-theme-fonts
sxhkd
ttf-fantasque-sans-mono
ttf-iosevka-nerd
ttf-material-design-iconic-font
ttf-meslo-nerd-font-powerlevel10k
volumeicon
)

count=0

for name in "${list[@]}" ; do
    count=$[count+1]
    tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
    func_install $name
done

# when on Leftwm

if [ -f /usr/share/xsessions/leftwm.desktop ]; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Leftwm related applications"
  echo "################################################################"
  tput sgr0
  echo


  #sh ~/.config/leftwm/scripts/install-all-arcolinux-themes.sh
  #sh ~/.config/leftwm/scripts/install-all-arcolinux-community-themes.sh

  #leftwm-theme update
  #leftwm-theme apply amos-eos-apollo

fi

echo
tput setaf 2
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo

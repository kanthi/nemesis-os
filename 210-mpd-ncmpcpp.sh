#!/bin/bash
#set -e

##################################################################################################################
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

# software from AUR (Arch User Repositories)
# https://aur.archlinux.org/packages/
echo
tput setaf 2
echo "################################################################"
echo "################### Mpd & Ncmpcpp"
echo "################################################################"
tput sgr0
echo

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

sh $installed_dir/AUR/install-mpd-ncmpcpp-v*.sh

echo
tput setaf 2
echo "################################################################"
echo "################### Mpd & Ncmpcpp installed"
echo "################################################################"
tput sgr0
echo

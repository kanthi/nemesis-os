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

# when on EOS

###############################################################################
#
#   DECLARATION OF FUNCTIONS
#
###############################################################################

tput setaf 6
echo "################################################################"
echo "FINAL SKEL"
echo "Copying all files and folders from /etc/skel to ~"
echo "################################################################"
echo;tput sgr0
sudo pacman -S archlinux-appstream-data --noconfirm
cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)
cp -arf /etc/skel/. ~

tput setaf 2
echo "################################################################"
echo "ALL DONE!!!!!!!!!!!!!!!"
echo "################################################################"
echo;tput sgr0

#!/bin/bash
#set -e
##################################################################################################################
# Author 	: Erik Dubois
# Website   : https://www.erikdubois.be
# Website	: https://www.arcolinux.info
# Website	: https://www.arcolinux.com
# Website	: https://www.arcolinuxd.com
# Website	: https://www.arcolinuxb.com
# Website	: https://www.arcolinuxiso.com
# Website	: https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo
tput setaf 2
echo "################################################################"
echo "################### Telegram desktop icon to be installed"
echo "################################################################"
tput sgr0
echo

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

sudo cp $installed_dir/settings/telegram/telegram.png /usr/share/icons/hicolor/128x128/apps/telegram.png
sudo cp $installed_dir/settings/telegram/telegram.png /usr/share/icons/hicolor/16x16/apps/telegram.png
sudo cp $installed_dir/settings/telegram/telegram.png /usr/share/icons/hicolor/256x256/apps/telegram.png
sudo cp $installed_dir/settings/telegram/telegram.png /usr/share/icons/hicolor/32x32/apps/telegram.png
sudo cp $installed_dir/settings/telegram/telegram.png /usr/share/icons/hicolor/48x48/apps/telegram.png
sudo cp $installed_dir/settings/telegram/telegram.png /usr/share/icons/hicolor/512x512/apps/telegram.png
sudo cp $installed_dir/settings/telegram/telegram.png /usr/share/icons/hicolor/64x64/apps/telegram.png

echo
tput setaf 2
echo "################################################################"
echo "################### Telegram desktop icon installed"
echo "################################################################"
tput sgr0
echo

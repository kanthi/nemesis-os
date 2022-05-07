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
echo "################### Bluetooth settings to be installed"
echo "################################################################"
tput sgr0
echo

#settings for a bluetooth headset
#after reboot switch off and on your device to get connected automatically and to the right channel

# echo "Fix 1"
# echo "#################"
# FIND="#AutoEnable=false"
# REPLACE="AutoEnable=true"
# sudo sed -i "s/$FIND/$REPLACE/g" /etc/bluetooth/main.conf
#
# if grep --quiet AutoEnable=true /etc/bluetooth/main.conf; then
#   echo "Autoenable=true is already added"
# fi
#
# echo "Fix 2"
# echo "#################"
# if grep --quiet module-switch-on-connect /etc/pulse/default.pa; then
#   echo "module-switch-on-connect is already added"
# else
# echo '
# load-module module-switch-on-connect' | sudo tee --append /etc/pulse/default.pa
# fi

# echo "#################"
# echo "Fix 3"
# echo "#################"
# [ -f /etc/modprobe.d/bluetooth-clear.conf ] && echo "Bluetooth-clear already created" || echo 'options ath9k btcoex_enable = 1' | sudo tee /etc/modprobe.d/bluetooth-clear.conf

# not necessary any more on 26/06/2021
# echo "#################"
# echo "Fix 4"
# echo "#################"
# if grep --quiet "Disable=Socket" /etc/bluetooth/main.conf; then
# 	echo "Disable=Socket is already added"
# else
# 	echo '
# Disable=Socket' | sudo tee --append /etc/bluetooth/main.conf
# fi

echo
tput setaf 2
echo "################################################################"
echo "################### Bluetooth settings installed"
echo "################################################################"
tput sgr0
echo
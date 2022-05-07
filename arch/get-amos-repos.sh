#!/bin/bash


echo "Getting the latest arcolinux mirrors file"

echo '
[amos-repo]
SigLevel = Optional TrustedOnly
Server = https://amanre.github.io/$repo/$arch

[amos-3rd-party-repo]
SigLevel = Optional TrustedOnly
Server = https://amanre.github.io/$repo/$arch

[amos-core-repo]
SigLevel = Optional TrustedOnly
Server = https://amanre.github.io/$repo/$arch' | sudo tee --append /etc/pacman.conf



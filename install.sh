#!/bin/sh


sudo ./installpackages.sh
./firefoxInstall.sh

stow vim
./setupVundle.sh
stow xmonad
stow zsh
stow config
#enable xmonad

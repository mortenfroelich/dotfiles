#!/bin/sh

#require root

sudo ./installpackages.sh

stow vim
./setupVundle.sh
stow xmonad
stow zsh
stow config

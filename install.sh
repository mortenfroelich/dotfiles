#!/bin/sh
currentDir=$(pwd)

sudo ./installpackages.sh
firefox/firefoxInstall.sh
if [ ! -f "~/.oh-my-zsh" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
	rm ~/.zshrc
	chsh -s /usr/bin/zsh
fi

stow vim --ignore=.*\.swp
./setupVundle.sh
stow xmonad --ignore=.*\.swp
stow zsh --ignore=.*\.swp
stow zshcustom --target=/home/morten/.oh-my-zsh/ --ignore=.*\.swp
stow config --ignore=.*\.swp
stow git --ignore=.*\.swp
ln -snf "$currentDir/git/gitignore" ~/.gitignore
# Setup urxvt and fonts

stow Xresources --ignore=.*\.swp
xrdb -merge ~/.Xresources
xrdb -merge ~/.Xdefaults
ln -snf "$currentDir/fonts" ~/.local/share/fonts
stow i3 --ignore=.*\swp

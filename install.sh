#!/bin/sh
while getopts m: option
do
	case "${option}"
		in
		m) MACHINE=${OPTARG};;
	esac
done
#Validate a machine arg is given and known.
if [ "$MACHINE" != "desktop" ] && [ "$MACHINE" != "thinkpad" ] && [ "$MACHINE" != "dellstudio" ];then
	echo "Unknown machine set: $MACHINE"
	exit 1
fi

currentDir=$(pwd)

sudo ./installpackages.sh -m "$MACHINE"
firefox/firefoxInstall.sh
if [ ! -f "~/.oh-my-zsh" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
	rm ~/.zshrc
	chsh -s /usr/bin/zsh
fi

stow vim --ignore=.*\.swp
./setupVundle.sh
#stow xmonad --ignore=.*\.swp
stow zsh --ignore=.*\.swp
stow zshcustom --target=/home/morten/.oh-my-zsh/ --ignore=.*\.swp
stow config --ignore=.*\.swp
stow git --ignore=.*\.swp
ln -snf "$currentDir/git/gitignore" ~/.gitignore
# Setup urxvt and fonts

stow Xresources --ignore=.*\.swp
xrdb -merge ~/.Xresources
xrdb -merge ~/.Xdefaults
mkdir -p ~/.local/share
ln -s "$currentDir/fonts" ~/.local/share/fonts
if [ "$MACHINE" == "desktop" ];then
	stow i3desktop
fi
if [ "$MACHINE" == "dellstudio" ] || [ "$MACHINE" == "thinkpad" ];then
	stow i3laptop
fi

#update remote of dotfile repo to use ssh
git remote set-url origin git@github.com:mortenfroelich/dotfiles

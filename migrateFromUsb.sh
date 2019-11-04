#!/bin/bash

pushd /home/morten
sudo mkdir /media/usb
sudo mount /dev/sdb1 /media/usb
cp -r /media/usb/.ssh .
mkdir Music
cp -r /media/usb/Music/* Music/
cp -r /media/usb/secrets .
mkdir projects
cp -r /media/usb/dotfiles projects/
mkdir Pictures
cp -r /media/usb/burning_tail_by_gom3z-d6549w8.png Pictures/
ln -s /home/morten/Pictures/burning_tail_by_gom3z-d6549w8.png /home/morten/Pictures/background.jpg
chmod 700 .ssh/id_rsa .ssh/known_hosts secrets secrets/mortenkey20161017.key
sudo umount /media/usb
popd

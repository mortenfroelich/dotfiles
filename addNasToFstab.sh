#!/bin/bash
NASMOUNT=/media/nas
if [ ! -f creds ]; then
	echo 'Cannot find creds file, run beside file named creds with smb credentials'	
	return
fi
if [ ! -d "$NASMOUNT" ]; then
	sudo mkdir "$NASMOUNT"
	mv creds ~/.smbcredentials
	chmod 600 ~/.smbcredentials
	echo "//froelichnas/morten /media/nas cifs credentials=/home/morten/.smbcredentials,x-systemd.automount,file_mode=0664,dir_mode=0775,gid=morten,uid=morten 0 0" | sudo tee -a /etc/fstab
fi

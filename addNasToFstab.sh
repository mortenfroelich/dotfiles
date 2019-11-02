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
	echo "//froelichnas/morten $NASMOUNT cifs credentials=/home/morten/.smbcredentials,iocharset=utf8,sec=ntlm 0 0" | sudo tee -a /etc/fstab
fi

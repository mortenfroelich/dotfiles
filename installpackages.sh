#!/bin/bash
while getopts m: option
do
	case "${option}"
		in
		m) MACHINE=${OPTARG};;
	esac
done
# Add contrib and non-free sources
apt-add-repository contrib
apt-add-repository non-free
# Update and upgrade current packages.
apt-get update
apt-get upgrade

# Install machine dependant firmware if applicable
if [ "$MACHINE" == "desktop" ];then
	Firmware=$(grep -v '#' desktopfirmware.txt)
	for package in $Firmware
	do
		apt-get install -y $package
	done
fi
if [ "$MACHINE" == "thinkpad" ];then
	Firmware=$(grep -v '#' thinkpadfirmware.txt)
	for package in $Firmware
	do
		apt-get install -y $package
	done
fi
if [ "$MACHINE" == "dellstudio" ];then
	Firmware=$(grep -v '#' dellstudiofirmware.txt)
	for package in $Firmware
	do
		apt-get install -y $package
	done
fi

# Install the packages found in packages.txt ignoring # lines
if (( $EUID != 0 )); then
	echo "Please run as root"
	exit
fi
Packages=$(grep -v '#' packages.txt)
for package in $Packages
do
	apt-get install -y $package
done

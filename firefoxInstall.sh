#!/bin/bash
FIREFOX=/opt/firefox/firefox
if [ ! -f "$FIREFOX" ]; then
	wget -O ~/FirefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64"
	sudo tar xjf ~/FirefoxSetup.tar.bz2 -C /opt/
	sudo ln -s "$FIREFOX" /usr/local/bin/firefox
	rm ~/FirefoxSetup.tar.bz2
	sudo update-alternatives --install /usr/bin/x-www-browser x-www-browser /opt/firefox/firefox 200 && sudo update-alternatives --set x-www-browser /opt/firefox/firefox
fi

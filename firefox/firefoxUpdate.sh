#!/bin/bash
FIREFOX=/opt/firefox/firefox
wget -O ~/FirefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64"
sudo tar xjf ~/FirefoxSetup.tar.bz2 -C /opt/
rm ~/FirefoxSetup.tar.bz2

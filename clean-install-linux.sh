#!/bin/sh

# Upgrade packages that are available to update
sudo apt-get update
sudo apt-get -y upgrade


### DOCUMENTS

# LaTeX
sudo apt-get install -y latex texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended

# myspell languages
sudo apt-get install -y myspell-en-gb myspell-en-us myspell-es myspell-fr-gut myspell-it

# verbiste
sudo apt-get install -y verbiste

# pdf-shuffler
sudo apt-get install -y pdf-shuffler


### DEVELOPMENT

# git: ppa for last stable
sudo apt-add-repository -y ppa:git-core/ppa
sudo apt-get update
sudo apt-get -y install git

# nodejs & npm: ppa for last stable
sudo add-apt-repository ppa:chris-lea/node.js 
sudo apt-get update
sudo apt-get -y install build-essential nodejs

# emacs editor with .emacs configuration file
sudo apt-get install -y emacs
wget https://raw.githubusercontent.com/Algar/clean-install-linux.sh/master/.emacs -O ~/.emacs


### COMMUNICATION

# pidgin (with otr support) and Skype
sudo add-apt-repository ppa:pidgin-developers/ppa
sudo apt-get update
sudo apt-get install -y pidgin pidgin-otr

# skype
sudo apt-get install -y skype


### GRAPHICS

# gimp, inkscape
sudo apt-get install gimp inkscape


## GAMES

# Steam
sudo add-apt-repository -y deb http://repo.steampowered.com/steam/ precise steam
sudo apt-get update
sudo apt-get install steam


### SMARTPHONES

# support for the OnePlusOne smartphone (OPO) according to
# https://forums.oneplus.net/threads/guida-montare-lo-oneplus-one-come-archivio-di-massa-su-ubuntu.62172/
sudo apt-get install -y libmtp-common mtp-tools libmtp-dev libmtp-runtime libmtp9
sudo wget https://raw.githubusercontent.com/Algar/clean-install-linux.sh/master/51-android.rules -O /etc/udev/rules.d/51-android.rules
sudo wget https://raw.githubusercontent.com/Algar/clean-install-linux.sh/master/69-mtp.rules -O /lib/udev/rules.d/69-mtp.rules
sudo service udev restart


### MISCELANOUS
 
# media player and webcam tools
sudo apt-get install -y vlc recordmydesktop cheese

# kupfer launcher
sudo apt-get install kupfer

# google chrome
sudo add-apt-repository -y deb http://dl.google.com/linux/chrome/deb/ stable main
sudo apt-get update
sudo apt-get install -y google-chrome-stable


### BIBLIOGRAPHY

# Mendeley
sudo add-apt-repository -y deb http://desktop-download.mendeley.com/download/apt stable main
sudo apt-update
sudo apt-get install -y mendeleydesktop

# Publish or Perish: This is done at the end as it requires user input inside wine
sudo apt-get -y install wine winetricks
wget http://www.harzing.com/download/PoPSetup.exe -O pop.exe; winetricks ./pop.exe; rm pop.exe

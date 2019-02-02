#!/bin/bash

# My Setup Script

dpkg -l | grep -qw gdebi || sudo apt-get install -yyq gdebi

# Initial Software

sudo apt update

sudo apt install net-tools openssh-server sshfs gedit-plugin-text-size nano mpv vlc \
python-pip python3-pip ttf-mscorefonts-installer \
remmina spell tlp tlpui synaptic okular terminator systemctl snapd -yy

# Install Google Chrome:

mkdir /tmp/gc-install-tmp
pushd /tmp/gc-install-tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi -n google-chrome-stable_current_amd64.deb
popd
rm -rf /tmp/gc-install-tmp

# All snap Application sublime text, Visual studio code, powershell , slack , android studio, tor, postman
sudo apt update
sudo snap install sublime-text --classic 
sudo snap install code --classic
sudo snap install powershell --classic
sudo snap install slack --classic
#sudo snap install android-studio --classic
sudo snap install tor
sudo snap install postman

# Reboot now:
sudo apt update && sudo apt upgrade -y

echo $'\n'$"*** All done fokes! Please reboot now. ***"

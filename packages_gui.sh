#!/bin/bash

# Install handy GUI packages.

CURRENT_FOLDER=$PWD

echo "----- Getting latest version -----"
git pull

echo "----- Install useful GUI dependencies -----"
sudo apt-get install thunar
sudo apt-get install redshift
sudo apt-get install volumeicon-alsa
sudo apt-get install xautolock
sudo apt-get install feh
sudo apt-get install cmus
sudo apt-get install ssh-askpass
sudo apt-get install gksu

sudo snap install tldr

cd "$CURRENT_FOLDER"
echo "----- End -----"

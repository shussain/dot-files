#!/bin/bash

# Install handy GUI packages.

CURRENT_FOLDER=$PWD

echo "----- Getting latest version -----"
git pull

echo "----- Install dependencies -----"
sudo apt-get install redshift
sudo apt-get install xdotool
sudo apt-get install volumeicon-alsa
sudo apt-get install xautolock
sudo apt-get install feh
sudo apt-get install ssh-askpass
sudo apt-get install gksu

cd "$CURRENT_FOLDER"

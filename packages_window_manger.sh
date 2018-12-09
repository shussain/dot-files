#!/bin/bash

# Install my Windows manager (currently i3)

CURRENT_FOLDER=$PWD

echo "----- Getting latest version -----"
git pull

echo "----- Install useful GUI dependencies -----"
sudo apt-get install i3
sudo apt-get install volumeicon-alsa
sudo apt-get install xautolock
sudo apt-get install rofi

cd "$CURRENT_FOLDER"
echo "----- End -----"

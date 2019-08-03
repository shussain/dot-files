#!/bin/bash

# Install my Windows manager (currently i3)

CURRENT_FOLDER=$PWD

echo "----- Install useful GUI dependencies -----"
sudo apt-get install i3 rofi
sudo apt-get install xautolock
sudo apt-get install blueman volumeicon-alsa

cd "$CURRENT_FOLDER"
echo "----- End -----"

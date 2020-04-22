#!/bin/bash

# Install Windows manager (currently i3) packages

CURRENT_FOLDER=$PWD

echo "----- Install useful Window manager dependencies -----"
sudo apt-get install i3 rofi
sudo apt-get install xautolock
sudo apt-get install blueman volumeicon-alsa

cd "$CURRENT_FOLDER"
echo "----- End -----"

#!/bin/bash

CURRENT_FOLDER=$PWD

echo "----- Getting latest version -----"
git pull

echo "----- Install dependencies -----"
sudo apt-get install xdotool
sudo apt-get install volumeicon-alsa

cd "$CURRENT_FOLDER"

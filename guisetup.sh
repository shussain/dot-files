#!/bin/bash

CURRENT_FOLDER=$PWD

echo "----- Getting latest version -----"
git pull

echo "----- Install dependencies -----"
sudo apt-get install redshift
sudo apt-get install xdotool
sudo apt-get install volumeicon-alsa
sudo apt-get install feh

cd "$CURRENT_FOLDER"

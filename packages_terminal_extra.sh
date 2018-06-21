#!/bin/bash

# Install handy terminal packages.

CURRENT_FOLDER=$PWD

echo "----- Getting latest version -----"
git pull

echo "----- Install useful tools -----"
sudo apt-get install zip
sudo apt-get install mc
sudo apt-get install figlet
sudo apt-get install lolcat
sudo apt-get install pwgen
sudo apt-get install pass
sudo apt-get install mosh

cd "$CURRENT_FOLDER"
echo "----- End -----"

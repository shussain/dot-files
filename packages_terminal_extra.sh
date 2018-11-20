#!/bin/bash

# Install extra terminal packages.

CURRENT_FOLDER=$PWD

echo "----- Getting latest version -----"
git pull

if [ ! -d ".fzf" ]; then
    echo "----- Getting fuzzy find -----"
    git clone https://github.com/junegunn/fzf.git .fzf
    cd .fzf
    ./install
fi

echo "----- Install useful tools -----"
sudo apt-get install mc
sudo apt-get install zip
sudo apt-get install figlet
sudo apt-get install lolcat
sudo apt-get install pwgen
sudo apt-get install pass
sudo apt-get install rand
sudo apt-get install whois

cd "$CURRENT_FOLDER"
echo "----- End -----"

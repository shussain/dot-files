#!/bin/bash

# Install extra terminal packages.

CURRENT_FOLDER=$PWD

if [ ! -d ".fzf" ]; then
    echo "----- Getting fuzzy find -----"
    git clone https://github.com/junegunn/fzf.git .fzf
    cd .fzf
    ./install
fi

echo "----- Install useful tools -----"
sudo apt-get install fish
sudo apt-get install mc
sudo apt-get install figlet lolcat
sudo apt-get install pwgen pass
sudo apt-get install rand
sudo apt-get install espeak
sudo apt-get install ispell
sudo apt-get install net-tools
sudo apt-get install vinagre
sudo apt-get install whois
sudo apt-get install rtv
sudo apt-get install w3m w3m-img

sudo apt-get install apt-dater
sudo apt-get install apt-dater-host

cd "$CURRENT_FOLDER"
echo "----- End -----"

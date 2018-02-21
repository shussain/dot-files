#!/bin/bash

# Install handy dev packages.

CURRENT_FOLDER=$PWD

echo "----- Install necessary dev packages -----"
sudo apt-get install build-essential
sudo apt-get install make
sudo apt-get install gcc

echo "----- Install useful dev tools -----"
sudo apt-get install exuberant-ctags
sudo apt-get install gitk
sudo apt-get install git-flow
sudo apt-get install tig
sudo apt-get install meld
sudo apt-get install strace
sudo apt-get install gdb
sudo apt-get install tcpdump

cd "$CURRENT_FOLDER"
echo "----- End -----"

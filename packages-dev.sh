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
sudo apt-get install meld
sudo apt-get install strace gdb
sudo apt-get install tcpdump
sudo apt-get install bpython bpython3

sudo apt-get install pylint yamllint

sudo apt-get install pod2pdf
sudo apt-get install xmlto

cd "$CURRENT_FOLDER"
echo "----- End -----"

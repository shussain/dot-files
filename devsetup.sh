#!/bin/bash

CURRENT_FOLDER=$PWD

echo "----- Install necessary dev packages -----"
sudo apt-get install gitk
sudo apt-get install build-essential
sudo apt-get install make
sudo apt-get install gcc

cd "$CURRENT_FOLDER"

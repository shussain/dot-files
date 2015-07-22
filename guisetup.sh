#!/bin/bash

CURRENT_FOLDER=$PWD

echo "----- Getting latest version -----"
git pull

echo "----- Install dependencies -----"
sudo apt-get install xdotool

cd "$CURRENT_FOLDER"

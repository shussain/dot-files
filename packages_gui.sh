#!/bin/bash

# Install handy GUI packages.

CURRENT_FOLDER=$PWD

echo "----- Install useful GUI dependencies -----"
sudo apt-get install arandr
sudo apt-get install kde-spectacles feh
sudo apt-get install redshift
sudo apt-get install cmus
sudo apt-get install rdesktop
sudo apt-get install ssh-askpass gksu
sudo apt-get install markdown

sudo apt-get install thunar
sudo apt install tumbler tumbler-plugins-extra ffmpegthumbnailer

sudo snap install tldr

cd "$CURRENT_FOLDER"
echo "----- End -----"

#!/bin/bash

# Normal install configuration.

CURRENT_FOLDER=$PWD
OH_MY_ZSH_DIR='oh-my-zsh'

echo "----- Getting latest version -----"
git pull

echo "----- Install dependencies -----"
sudo apt-get install zsh
sudo apt-get install stow
sudo apt-get install tmux
sudo apt-get install htop
sudo apt-get install zip
sudo apt-get install tree

echo "----- Update vimrc submodules -----"
git submodule init; git submodule sync; git submodule update

cd ..

if [ ! -d "$OH_MY_ZSH_DIR" ]; then
    echo "----- Get $OH_MY_ZSH_DIR submodules -----"
    git clone https://github.com/robbyrussell/oh-my-zsh $OH_MY_ZSH_DIR
fi

cd "$CURRENT_FOLDER"

echo "----- Stow configs and vimrc -----"
stow -R configs
stow -R vimrc

echo "----- Configuring setup -----"
cd $HOME
touch .rc_local
mkdir .gnupg && touch .gnupg/gpg-agent.env
cd $CURRENT_FOLDER

echo "----- Changing shell to zsh -----"
chsh -s /usr/bin/zsh

echo "----- End -----"

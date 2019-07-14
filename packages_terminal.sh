#!/bin/bash

# Install handy terminal packages.

CURRENT_FOLDER=$PWD
OH_MY_ZSH_DIR='oh-my-zsh'

echo "----- Install useful tools -----"
sudo apt-get install openssh-server
sudo apt-get install zsh
sudo apt-get install stow
sudo apt-get install tig
sudo apt-get install screen tmux
sudo apt-get install htop
sudo apt-get install tree
sudo apt-get install curl


echo "----- Update vimrc submodules -----"
git submodule init; git submodule sync; git submodule update

cd ..

if [ ! -d "$OH_MY_ZSH_DIR" ]; then
    echo "----- Getting oh-my-zsh -----"
    git clone https://github.com/robbyrussell/oh-my-zsh
fi

cd "$CURRENT_FOLDER"

echo "----- Stow configs and vimrc -----"
stow -R configs
stow -R vimrc

echo "----- Configuring setup -----"
cd $HOME
touch .rc_local
mkdir .gnupg && touch .gnupg/gpg-agent.env
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
# Install vim plugins using vundle
vim +PluginInstall +qall

echo "----- Changing shell to zsh -----"
chsh -s /usr/bin/zsh

cd "$CURRENT_FOLDER"
echo "----- End -----"

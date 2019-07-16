#!/bin/bash

# Install handy work packages.

CURRENT_FOLDER=$PWD

echo "----- Install necessary work packages -----"
sudo apt-get install hiera-eyaml

echo "----- Install useful dev tools -----"

cd "$CURRENT_FOLDER"
echo "----- End -----"

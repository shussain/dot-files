#!/bin/bash

# Install handy work packages.

CURRENT_FOLDER=$PWD

echo "----- Install necessary work packages -----"
sudo apt-get install hiera-eyaml
sudo apt-get install nagstamon
sudo apt-get install puppet-lint

cd "$CURRENT_FOLDER"
echo "----- End -----"

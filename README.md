# dot-files

This repository contains various dot/configuration files and setup scripts
for setting up various environments.

## Installation

Use the various packages_*.sh to download dependencies, and setup the
configuration structure. The scripts can be used to bootstrap a vanilla
VM/machine to have vim, configurations, etc.

For all use cases, run: packages_terminal.sh

For setting up a Windows manager, run: packages_window_manger.sh

For server VM, also run: packages_terminal_extra.sh

For GUI environments, also run: packages_terminal_extra.sh, packages_window_manger.sh and packages_gui.sh

For development environments, also run: packages_terminal_extra.sh and packages_dev.sh

For work environment, also run: packages_work.sh

## Deployment

Stow (a software installation manager) can be used to create symbolic link
of the various configurations. This can be done by running:

_stow -R configs_
_stow -R vimrc_

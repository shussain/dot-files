# dot-files

This repository contains various dot/configuration files and setup scripts for
setting up various environments.

Use the various packages_*.sh_ to download dependencies, and setup the
configuration structure. The scripts can be used to bootstrap a vanilla
VM/machine to have vim, configurations, etc.

For all use cases , run packages_terminal.sh

For server VM, also run packages_terminal_extra.sh

For GUI environments, also run packages_terminal_extra.sh and packages_gui.sh

For development environments, also run packages_terminal_extra.sh and packages_dev.sh

Stow (a software installation manager) can be used to create symbolic link
of the various configurations. This can be done by running:

_stow -R configs_
_stow -R vimrc_


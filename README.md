# dot-files

This repository contains various dot/configuration files and setup scripts
for setting up various environments.

## Installation

Use the various packages-*.sh to download dependencies, and setup the
configuration structure. The scripts can be used to bootstrap a vanilla
VM/machine to have vim, configurations, etc.

### For all use cases, run:
packages-terminal.sh

### For setting up a Windows manager, run:
packages-window-manger.sh

### For server VM, also run:
packages-terminal-extra.sh

### For GUI environments, also run:
packages-terminal-extra.sh, packages-window-manger.sh and packages-gui.sh

### For development environments, also run:
packages-terminal-extra.sh and packages-dev.sh

### For work environment, also run:
packages-work.sh

## Deployment

Stow (a software installation manager) can be used to create symbolic link
of the various configurations. This can be done by running:

_stow -R configs_
_stow -R vimrc_

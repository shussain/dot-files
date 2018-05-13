# dot-files

This repository contains various dot/configuration files.

Use the various _*packages.sh_ to download dependencies, and setup the
configuration structure. The scripts can be used to bootstrap a vanilla
VM/machine to have vim, configurations, etc.

For GUI environments, run packages_terminal.sh first and then packages_gui.sh

For development environments, run packages_terminal.sh and then packages_dev.sh

Stow (a software installation manager) can be used to create symbolic link
of the various configurations. This can be done by running:
_stow -R configs_

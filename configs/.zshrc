# Path to your oh-my-zsh installation.
export ZSH=$HOME/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="shussain"

# Disable oh-my-zsh prompting/nag
DISABLE_AUTO_UPDATE="true"

# Specifying terminal program (for i3)
export TERMINAL='lxterminal'

# Report CPU usage for commands running longer than 5 seconds
REPORTTIME=5

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    git
    python
    rsync
    encode64  extract
    ssh-agent gpg-agent
    vi-mode
    emoji colored-man-pages
)

zstyle :omz:plugins:ssh-agent identities id_rsa infra xeler hre dio hre-2019 apt-dater hre_root pvpn portage spvpn

source $ZSH/oh-my-zsh.sh

# User configuration
source $HOME/.zshalias
source $HOME/.zshfunction
source $HOME/.zshreminder

export PATH=$HOME/bin:/usr/local/bin:$PATH


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
fi

source ~/.rc_local

# Use fzf (fuzzy finder written in Go)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS='--height 100% --layout=reverse'

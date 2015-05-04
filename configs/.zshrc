# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="shussain"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git encode64 fabric python web-search gpg-agent vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias shutdown='sudo shutdown -h now'
#alias xterm='xterm -font -*-fixed-medium-*-normal-*-14-130-*-*-*-*-*-* -geometry 110x35'

alias cal='ncal -bJM -A 1 -B 1'
alias battery='acpi -b'
alias phonelist='cat ~/credil/operations/phonelist'
alias explorer='nautilus .'
alias finances='scp ~/Desktop/finances.txt dadar:/home/shussain/Desktop; ssh code.credil.org "killall nc"'

alias cdcode='cd $HOME/project'
alias gitk='gitk --all &'
alias webtest='firefox &'

# Generate random words... handy for generating passwords. Lately, been using pwgen instead
# I realize I use cut way, way too much. I should really refactor my functions
# to use awk and be neater.
alias randword='wc -l /etc/dictionaries-common/words |cut -c1-5 |xargs -I numb rand -M numb |xargs -I randomnumb sed -n randomnumbp /etc/dictionaries-common/words'
alias getip='lynx --dump http://checkip.dyndns.org | cut -c24-38'
alias youtube-dl='~/bin/youtube-dl -t'

alias pom='$HOME/code/python_code/pomodoro/pomodoro-notify.py &'
alias pom_b='$HOME/code/python_code/pomodoro/pomodoro-notify.py -b &'

alias dualdisplay='source $HOME/.screenlayout/dualdisplay.sh && source $HOME/.startconky'
alias singledisplay='source $HOME/.screenlayout/singledisplay.sh && source $HOME/.startconky'
alias homedisplay='source $HOME/.screenlayout/home_bigdisplay.sh && source $HOME/.startconky'

alias mount_nexus4='sudo mtpfs -o allow_other /media/nexus4'
alias mount_nexus7='sudo mtpfs -o allow_other /media/nexus7'

alias reddit='firefox www.reddit.com/r/vim www.reddit.com/r/linux www.reddit.com/r/mma www.reddit.com/r/cricket www.reddit.com/r/ottawa www.reddit.com/r/canada www.reddit.com/r/canadapolitics'

function boot() {
    BOOTTIME=`who -b |cut -c34-49`
    echo Boot time: $BOOTTIME
}

function json_validate {
    python -c "import json; fd=open('$1'); answer = json.dumps(json.load(fd), indent=4); print(answer)"
}

source ~/.rc_local

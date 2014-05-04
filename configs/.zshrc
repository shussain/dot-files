# Created by newuser for 4.3.11
setopt PROMPT_SUBST
mypath=
PROMPT='%{$(pwd|grep --color=always /)%${#PWD}G%} %(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m%f%(!.%F{red}.)%#%f '

HISTSIZE=999
HISTFILE=~/.zsh_history
SAVEHIST=999

setopt HIST_IGNORE_DUPS

# Share history among terminals
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# The following are changes that I want on all the systems I use.

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias ruby='ruby1.9.1'
alias rake='rake1.9.1'
alias irb='irb1.9.1'

alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias shutdown='sudo shutdown -h now'
#alias xterm='xterm -font -*-fixed-medium-*-normal-*-14-130-*-*-*-*-*-* -geometry 110x35'

alias cal='ncal -bJM -A 1 -B 1'
alias battery='acpi -b'
alias phonelist='cat ~/credil/operations/phonelist'
alias explorer='nautilus .'

alias cdcode='cd $HOME/project'
alias gitk='gitk --all &'
alias webtest='firefox &'

# Generate random words... handy for generating passwords. Lately, been using pwgen instead
# I realize I use cut way, way too much. I should really refactor my functions
# to use awk and be neater.
alias randword='wc -l /etc/dictionaries-common/words |cut -c1-5 |xargs -I numb rand -M numb |xargs -I randomnumb sed -n randomnumbp /etc/dictionaries-common/words'
alias getip='lynx --dump http://checkip.dyndns.org | cut -c24-38'
alias youtube-dl='~/bin/youtube-dl -t'
alias currency='source ~/bin/currency.sh'
alias timezone='python ~/bin/timezone.py'

alias pom='$HOME/code/python_code/pomodoro/pomodoro-notify.py &'
alias pom_b='$HOME/code/python_code/pomodoro/pomodoro-notify.py -b &'

alias dualdisplay='source $HOME/.screenlayout/dualdisplay.sh && source $HOME/.startconky'
alias singledisplay='source $HOME/.screenlayout/singledisplay.sh && source $HOME/.startconky'
alias homedisplay='source $HOME/.screenlayout/home_bigdisplay.sh && source $HOME/.startconky'

alias mount_nexus4='sudo mtpfs -o allow_other /media/nexus4'

alias reddit='firefox www.reddit.com/r/vim www.reddit.com/r/linux www.reddit.com/r/mma www.reddit.com/r/cricket www.reddit.com/r/ottawa www.reddit.com/r/canada www.reddit.com/r/canadapolitics'

function boot() {
    BOOTTIME=`who -b |cut -c34-49`
    echo Boot time: $BOOTTIME
}

function json_validate {
    python -c "import json; fd=open('$1'); answer = json.dumps(json.load(fd), indent=4); print(answer)"
}

GIT_COMMITTER_NAME="Samir Hussain" export GIT_COMMITTER_NAME
GIT_COMMITTER_EMAIL="shussain@credil.org" export GIT_COMMITTER_EMAIL
GIT_AUTHOR_NAME="Samir Hussain" export GIT_AUTHOR_NAME
GIT_AUTHOR_EMAIL="shussain@credil.org" export GIT_AUTHOR_EMAIL

source ~/.rc_local

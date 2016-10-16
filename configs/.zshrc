# Path to your oh-my-zsh installation.
export ZSH=$HOME/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="shussain"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git encode64 fabric python web-search gpg-agent ubuntu vi-mode colored-man-pages)

source $ZSH/oh-my-zsh.sh

# User configuration
source .zshalias

export PATH=$HOME/bin:/usr/local/bin:$PATH

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
fi


function boot() {
    BOOTTIME=`who -b |cut -c34-49`
    echo Boot time: $BOOTTIME
}

function json_validate {
    python -c "import json; fd=open('$1'); answer = json.dumps(json.load(fd), indent=4); print(answer)"
}

reminder() {
  echo notify-send -t 0 \'$2\' | at $1
  echo "Reminder: $2 set for $1"
}

add_one_minute() {
    time_in_epoch=`date -d $1 +%s`
    s_time=$((time_in_epoch+60)) # Increment by 1 minute
    set_time=`date -d "1970-01-01 00:00:00 UTC $s_time seconds" +"%H:%M"` # get time in %H:%M format
    echo $set_time
}

reminders() {
    set_time=$1
    reminder $set_time $2

    set_time=`add_one_minute $set_time`
    reminder $set_time $2

    set_time=`add_one_minute $set_time`
    reminder $set_time $2

    set_time=`add_one_minute $set_time`
    reminder $set_time $2

    set_time=`add_one_minute $set_time`
    reminder $set_time $2
}

grepc() {
    grep -rin --color=auto --exclude-dir={.bzr,.cvs,.git,.hg,.svn} --include=\*.{c,h,y,l} $1 .
}

source ~/.rc_local

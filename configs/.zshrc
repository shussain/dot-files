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

export PATH=$HOME/bin:/usr/local/bin:$PATH

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
fi


alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias shutdown='sudo shutdown -h now'
#alias xterm='xterm -font -*-fixed-medium-*-normal-*-14-130-*-*-*-*-*-* -geometry 110x35'

# Specifying terminal program (for i3)
export TERMINAL='lxterminal'

# Do not attempt to correct vim to .vim   E.g. sudo vim /etc/sudoers
alias vim='nocorrect vim'

alias cal='ncal -y -w -M'
alias calw='ncal -w -M'
alias ctags='ctags -R .'
alias bc='bc -l'
alias df='df -h'
alias du='du -h'
alias gitk='gitk --all &'
alias iptable='sudo iptables -L -n -v'
alias hexdump='hexdump -v -e '"'"'"%010_ad  |"'"'"' -e '"'"'"%_p"'"'"' -e '"'"'/16 "|\n"'"'"''
alias shred='shred -zun 50'
alias youtube-dl='~/bin/youtube-dl -t'

alias p='ps -axf'
alias v='virsh'
alias vlist='virsh list --all'
alias battery='acpi -b'
alias explorer='nautilus .'
alias webtest='firefox &'
alias getip='lynx --dump http://checkip.dyndns.org | cut -d: -f 2'
alias getlargestitem='sudo du -hsx * | sort -rh | head -10'
alias ping_google='ping 8.8.8.8'
alias sshvm='ssh samir -t tmux attach' # ssh into VM and attach to tmux
alias unmute='pactl set-sink-mute 0 0'

alias gdc='git diff --cached'
alias gaiw='git diff -w --no-color | git apply --cached --ignore-whitespace'
# reset local git changes (that have not been pushed)
alias undo='git reset --hard HEAD'

alias phonelist='cat ~/Desktop/phonelist'
alias networklist='cat ~/Desktop/network.txt'
alias finances='scp ~/Desktop/finances.txt.gpg dadar:/home/shussain/Desktop; ssh code "killall nc"'
alias cdcode='cd $HOME/project'

alias reddit='firefox www.reddit.com/r/vim www.reddit.com/r/linux www.reddit.com/r/mma www.reddit.com/r/cricket www.reddit.com/r/ottawa www.reddit.com/r/canada www.reddit.com/r/canadapolitics'
alias weather='curl http://wttr.in/ottawa'
alias moon='curl wttr.in/Moon'

alias pom='$HOME/code/python_code/pomodoro/pomodoro-notify.py &'
alias pom_b='$HOME/code/python_code/pomodoro/pomodoro-notify.py -b &'

alias dualdisplay='source $HOME/.screenlayout/dualdisplay.sh && source $HOME/.startconky'
alias singledisplay='source $HOME/.screenlayout/singledisplay.sh && source $HOME/.startconky'
alias homedisplay='source $HOME/.screenlayout/home_bigdisplay.sh && source $HOME/.startconky'

alias mount_nexus4='sudo mtpfs -o allow_other /media/nexus4'
alias mount_nexus7='sudo mtpfs -o allow_other /media/nexus7'

alias mailtodo='mailx -s Todo habibilus@gmail.com < ~/Desktop/todo.txt'

# Generate random words... handy for generating passwords. Lately, been using pwgen instead
# I realize I use cut way, way too much. I should really refactor my functions
# to use awk and be neater.
alias randword='wc -l /etc/dictionaries-common/words |cut -c1-5 |xargs -I numb rand -M numb |xargs -I randomnumb sed -n randomnumbp /etc/dictionaries-common/words'

# redshift alias
alias day='redshift -m randr:screen=0 -O 5500'
alias evening='redshift -m randr:screen=0 -O 4000'
alias night='redshift -m randr:screen=0 -O 3700'
alias redshift_reset='redshift -m randr:screen=0 -x'

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

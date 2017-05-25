# Git aliases
alias gst='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdca='git diff --cached'
alias gcmsg='git commit -m'
alias undo='git reset --hard HEAD'
alias gaiw='git diff -w --no-color | git apply --cached --ignore-whitespace'

# Common useful alias
alias p='ps axf'
alias d='dirs -v | head -10'
alias iptable='sudo iptables -L -n -v'
alias ping_google='ping 8.8.8.8'
alias shred='shred -zun 50'

# Grab my .zshalias file
if [ -f ~/.zshalias ]; then
    . ~/.zshalias
fi

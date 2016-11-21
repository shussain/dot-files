# Git aliases
alias gst='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdca='git diff --cached'
alias gcmsg='git commit -m'

# Common useful alias
alias p='ps axf'
alias iptable='sudo iptables -L -n -v'
alias ping_google='ping 8.8.8.8'

# Grab my .zshalias file
if [ -f ~/.zshalias]; then
    . ~/.zshalias
fi

# Git aliases
alias gst='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdca='git diff --cached'
alias gcmsg='git commit -m'
alias p='ps axf'

# Grab my .zshalias file
if [ -f ~/.zshalias]; then
    . ~/.zshalias
fi

# Using some handy switch for commands
alias cal='ncal -y -w -M'
alias calm='ncal -w -M'
alias ctags='ctags -R .'
alias bc='bc -l'
alias df='df -hT'
alias du='du -h'
alias hexdump='hexdump -v -e '"'"'"%010_ad  |"'"'"' -e '"'"'"%_p"'"'"' -e '"'"'/16 "|\n"'"'"''
alias less='less -iF'
alias shred='shred -zun 50'
alias tree='tree -a -I ".git"'
alias unattended-upgrade='sudo unattended-upgrade -d'

# Common useful alias
alias compress='gzip -9'
alias p='ps axf'
alias d='dirs -v | head -10'
alias getip='curl -s checkip.dyndns.org|sed -e "s/.*Current IP Address: //" -e "s/<.*$//"'
alias getlargestitem='sudo du -hsx * | sort -rh | head -10'
alias getwebheader='curl -I'
alias hashsum='sha256sum'
alias iptable='sudo iptables -L -n -v'
alias ping_google='ping 8.8.8.8'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'

# Git aliases
alias gst='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdca='git diff --cached'
alias gcmsg='git commit -m'
alias undo='git reset --hard HEAD'
alias gaiw='git diff -w --no-color | git apply --cached --ignore-whitespace'

# Grab my .zshalias file
if [ -f ~/.zshalias ]; then
    . ~/.zshalias
fi

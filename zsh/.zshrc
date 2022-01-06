#!/bin/zsh
ZSH_THEME="essembeh"
#ZSH_THEME="candy"
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source ~/.profile

# zsh only aliases
alias -g G='| grep'
alias -g M='| more'
alias -g L='| less'
alias -g T='| tail'
alias -g H='| head'
alias -g J='| jq'

# enable vi mode
# bindkey -v

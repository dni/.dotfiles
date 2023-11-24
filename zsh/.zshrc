#!/bin/zsh
export EDITOR='nvim'
export VISUAL='nvim'

ZSH_THEME="essembeh"
#ZSH_THEME="candy"
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
[[ -e ~/.myprofile ]] && source ~/.myprofile

# zsh only aliases
alias -g G='| grep'
alias -g M='| more'
alias -g L='| less'
alias -g T='| tail'
alias -g H='| head'
alias -g J='| jq'

# enable vi mode
# bindkey -v

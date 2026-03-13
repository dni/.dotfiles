#!/bin/zsh
export EDITOR='nvim'
export VISUAL='nvim'

ZSH_THEME="essembeh"

# only export use ohmyzsh if it exists
if [ -d ~/.oh-my-zsh ]; then
  export ZSH=~/.oh-my-zsh
  source $ZSH/oh-my-zsh.sh
fi


[[ -e ~/.myprofile ]] && source ~/.myprofile

# use gpg for ssh authentication
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# zsh only aliases
alias -g G='| grep'
alias -g M='| more'
alias -g L='| less'
alias -g T='| tail'
alias -g H='| head'
alias -g J='| jq'
alias -g X='| xclip -selection clipboard'
alias -g W='| wc -l'

# enable vi mode
# bindkey -v

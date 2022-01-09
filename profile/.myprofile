#!/usr/bin/env sh
while read -r x; do
  test -r ~/.dotfiles/"$x" && . ~/.dotfiles/"$x"
  test -r ~/"$x" && . ~/"$x"
done <<EOF
.env
.aliases
.functions
EOF

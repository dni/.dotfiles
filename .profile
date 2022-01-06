#!/usr/bin/env sh
export DOTFILES=~/dotfiles
while read -r x; do
  . "$DOTFILES"/"$x"
  test -r ~/"$x" && . ~/"$x"
done <<EOF
.env
.aliases
.functions
EOF

# for jekyll blog
PATH=$PATH:~/.local/share/gem/ruby/3.0.0/bin

# adb fastboot
if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

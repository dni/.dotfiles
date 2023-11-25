#!/usr/bin/env sh

# init x stuff
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

source ~/.myprofile
xinit_hook & # defined in ~/scripts/userspace/utils.sh
sxhkd & # keybinds daemon .config/sxhkd/
dunst & # notification daemon
xcompmgr -o .70 & # composite manager
xsettingsd & # settings manager

# open apps
firefox &
discord &
elements-desktop &
signal-desktop &
telegram-desktop &
pavucontrol &

while true; do
  status_update # statusbar
	sleep "$STATUS_INTERVAL"
done &

exec dwm

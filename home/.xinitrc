#!/usr/bin/env sh
source ~/.myprofile
xinit_hook & # defined in ~/scripts/userspace/utils.sh
sxhkd & # keybinds daemon .config/sxhkd/
dunst & # notification daemon
xcompmgr -o .66 & # composite manager
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

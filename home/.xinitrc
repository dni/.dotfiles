#!/usr/bin/env sh
source ~/.myprofile
xinit_hook & # defined in ~/scripts/userspace/utils.sh
sxhkd & # keybinds daemon .config/sxhkd/
dunst & # notification daemon
compton & # composite manager

# open apps
firefox &
thunderbird &
discord &
signal-desktop &
telegram-desktop &
pavucontrol &

while true; do
  status_update # statusbar
	sleep "$STATUS_INTERVAL"
done &

exec dwm

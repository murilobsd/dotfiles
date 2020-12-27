#!/bin/sh -e

export LANG=en_US.UTF-8

export MOZ_USE_XINPUT2=1
export MOZ_ACCELERATED=1
export MOZ_WEBRENDER=1

xrdb -DHOME=$HOME < ~/.Xdefaults

xbanish &
xidle &
redshift -l 41.90:-87.66 -t 6500:3250 -m randr &
dunst &

setxkbmap -layout 'us,br' -option \
	'grp:alt_space_toggle,grp_led:caps,ctrl:nocaps'

eval `dbus-launch --sh-syntax`

xset -b
xsetroot -solid "#063441"
exec spectrwm

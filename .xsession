#!/bin/sh -e

export LANG=en_US.UTF-8

export MOZ_USE_XINPUT2=1
export MOZ_ACCELERATED=1
export MOZ_WEBRENDER=1

xrdb -DHOME=$HOME < ~/.Xdefaults

setxkbmap -layout 'us,br' -option \
	'grp:alt_space_toggle,grp_led:caps,ctrl:nocaps'

xabanish &

xidle &

redshift -l 41.90:-87.66 -t 6500:3250 -m randr &

eval `dbus-launch --sh-syntax`

xset -b
exec cwm

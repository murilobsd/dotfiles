#!/bin/sh
doas ifconfig iwm0 nwid XXXXX wpakey XXXXXX wpaprotos wpa1,wpa2
doas dhclient iwm0

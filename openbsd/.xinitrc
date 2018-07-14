# .xinitrc
xset -b & # beep off
xsetroot -solid '#002b36' &
xrandr --output eDP-1 --scale 0.8x0.8 &
xstatbar -w 2048 -h 15 &
xset fp rehash &
setxkbmap -model abnt2 -layout br -variant abnt2 &
cwm 

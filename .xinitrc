xset r rate 250 35

feh --bg-scale ~/Pictures/1.jpg &
#exec xinput set-prop 10 "Device Enabled" 0 &
#xinput set-prop 11 325 1 &

setxkbmap -option "ctrl:swapcaps" && setxkbmap -layout us,ru && setxkbmap -option 'grp:alt_space_toggle' &
#exec dwmblocks &
picom &
polybar &
exec i3

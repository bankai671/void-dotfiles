xrdb -merge ~/.Xresources

xset s off -dpms &
xset r rate 200 40 &
setxkbmap -layout us,ru -option grp:win_space_toggle &
#~/.fehbg &
slstatus &
pipewire &
tiramisu-herbe &

exec dbus-run-session -- dwm


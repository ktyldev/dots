# get our colours
xrdb -load ~/.Xresources

# set background
sh ~/.fehbg

# set cursor to a nice one and also make it disappear when we're typing
xsetroot -cursor_name left_ptr
xbanish &

# set keyboard layout, map caps lock to ctrl and esc
setxkbmap gb
sh $SCRIPTS/keeb

# keybinds
sxhkd &

# start compositor
sh $SCRIPTS/comp

# unstrain eyes
redshift -l 53:0 &

#mopidy &                    # bops

# external drive management
udiskie &

# notifications
dunst &

dwmstatus &

# start window manager
exec dwm

# vim: set ft=sh:

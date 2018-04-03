xset r rate 270 30

xrandr --dpi 200
xrdb -merge ~/.Xresources
xmodmap ~/.xmodmap
light -I

pkill redshift
pkill compton
pkill python

export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

setxkbmap -layout us,lt
setxkbmap -option 'grp:alt_shift_toggle'

wal -R
exec dbus-launch i3

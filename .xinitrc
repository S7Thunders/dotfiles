xset r rate 270 30

xrandr --dpi 200
xrdb -merge ~/.Xresources
xmodmap ~/.xmodmap
xbindkeys -p

pkill python
pkill redshift

export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

[ ! -s ~/.config/mpd/pid ] && mpd && mpc pause
wal -t -i `cat ~/.fehbg | awk -F "'" '{print $2}' | xargs`

exec i3

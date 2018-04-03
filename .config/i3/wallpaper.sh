#!/bin/sh
echo "Wallpaper change about to begin..."
feh --bg-fill `find ~/pictures/wallpapers/ -type f | shuf -n 1` 
wal -t -o ~/.config/i3/wal-set.sh -i `cat ~/.fehbg | awk -F "'" '{print $6}' | xargs` > /dev/null  2>&1
echo "Wallpaper set & Wal colorset changed."

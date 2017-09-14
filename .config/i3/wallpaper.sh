#!/bin/sh
echo "Wallpaper change about to begin..."
feh --randomize --bg-fill ~/pictures/wallpapers/*
wal -t -i `cat ~/.fehbg | awk -F "'" '{print $2}' | xargs` > /dev/null  2>&1
echo "Wallpaper set & Wal colorset changed."

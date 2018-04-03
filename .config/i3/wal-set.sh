#!/usr/bin/env bash

# Source generated colors.
. "${HOME}/.cache/wal/colors.sh"

reload_dunst() {
    pkill dunst
    dunst \
        -lb "${color0:-#FFFFFF}" \
        -nb "${color0:-#FFFFFF}" \
        -cb "${color0:-#FFFFFF}" \
        -lf "${color15:-#000000}" \
        -bf "${color15:-#000000}" \
        -cf "${color15:-#000000}" \
        -nf "${color15:-#000000}" \
        -fn "Iosevka Term 10" &
}

main() {
    reload_dunst &
}

main

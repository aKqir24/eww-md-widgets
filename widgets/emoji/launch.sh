#!/bin/sh

if eww active-windows 2>/dev/null | grep -q emoji; then
    # Kill keyboard handler
    pkill -f "emoji-keyboard-handler" 2>/dev/null
    eww --config "$1" close emoji
else
    eww update emoji_query=""
    ~/.config/eww/scripts/search-emoji.sh ""
    eww --config "$1" open emoji
    ~/.config/eww/scripts/emoji-keyboard-handler &
fi

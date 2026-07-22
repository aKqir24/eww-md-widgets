#!/bin/sh

:wqpkill -f "yboard-handler" 2>/dev/null
if eww active-windows 2>/dev/null | grep -q launcher; then
    eww --config "$1" close launcher
else
    eww update search_query=""
    ~/.config/eww/scripts/search-apps.sh ""
    eww --config "$1"open launcher
    ~/.config/eww/scripts/keyboard-handler &
fi

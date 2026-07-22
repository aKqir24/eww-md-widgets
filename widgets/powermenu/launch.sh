#!/bin/sh

if eww active-windows 2>/dev/null | grep -q powermenu; then
    eww --config "$1" close powermenu
else
    eww --config "$1" open powermenu
fi

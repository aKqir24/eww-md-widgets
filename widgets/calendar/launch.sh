#!/bin/sh
if eww active-windows 2>/dev/null | grep -q calendar; then
    eww --config "$1" close calendar
else
    scripts/calendar
    eww --config "$1" open calendar
fi

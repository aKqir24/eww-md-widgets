#!/bin/sh
if eww active-windows 2>/dev/null | grep -q calendar; then
    eww close calendar
else
    eww open calendar
fi

#!/bin/sh
if eww active-windows 2>/dev/null | grep -q powerprofile; then
    eww close powerprofile
else
    eww open powerprofile
fi

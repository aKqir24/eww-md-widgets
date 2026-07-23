#!/bin/sh
if eww active-windows 2>/dev/null | grep -q "powermenu"; then
    eww update pm_profile_open=false
    eww close powermenu
else
    eww open powermenu
fi
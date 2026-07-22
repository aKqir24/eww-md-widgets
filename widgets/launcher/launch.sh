#!/bin/sh
if eww active-windows 2>/dev/null | grep -q launcher; then
    eww close launcher
else
    eww open launcher
fi

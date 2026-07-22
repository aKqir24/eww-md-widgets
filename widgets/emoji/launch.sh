#!/bin/sh
if eww active-windows 2>/dev/null | grep -q emoji; then
    eww close emoji
else
    eww open emoji
fi

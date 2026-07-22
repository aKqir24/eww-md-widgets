#!/bin/bash
# Usage: sh toggle.sh [widget name]
# Find the eww bin & config

EWW=$(which eww)
CFG="$HOME/.config/eww/widgets/${1}"

## Run eww daemon if not running already
if [[ ! `pidof eww` ]]; then
	${EWW} daemon
	sleep 1
fi

# Launch the widget
sh ${CFG}/launch.sh ${CFG}

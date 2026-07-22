#!/bin/bash
# Usage: sh toggle.sh [widget name]

EWW=$(which eww)
CFG="$HOME/.files/configs/all/eww"

## Run eww daemon if not running already
if [[ ! $(pidof eww) ]]; then
	${EWW} --config "$CFG" daemon
	sleep 1
fi

# Launch the widget
sh "$CFG/widgets/${1}/launch.sh"

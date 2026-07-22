#!/bin/bash
# Generates yuck code for app list from cache, writes to search_items.txt
CACHE="$HOME/.cache/eww/apps.cache"
OUT="$HOME/.files/configs/all/eww/scripts/search_items.txt"
[ -f "$CACHE" ] || ~/.files/configs/all/eww/widgets/launcher/scripts/cache-apps

APPS=$(head -12 "$CACHE")

buf=""
while IFS=$'\t' read -r exec_line name icon_path; do
    [ -z "$exec_line" ] && continue
    exec_escaped=$(echo "$exec_line" | sed "s/\"/\\\\\"/g")
    if [ -n "$icon_path" ] && [ -f "$icon_path" ]; then
        icon_part="(image :path \"${icon_path}\" :image-width 32 :image-height 32)"
    else
        initial=$(echo "$name" | cut -c1 | tr '[:lower:]' '[:upper:]')
        icon_part="(label :class \"app-letter\" :halign \"center\" :valign \"center\" :text \"${initial}\")"
    fi
    buf="${buf} (button :class \"app-item\" :onclick \"${exec_escaped} &\" (box :orientation \"h\" :spacing 12 :valign \"center\" ${icon_part} (label :class \"app-name\" :halign \"start\" :text \"${name}\")))"
done <<< "$APPS"

echo "(box :orientation \"v\" :spacing 4 :class \"app-list\" :halign \"fill\" ${buf})" > "$OUT"

#!/bin/bash
DB="$HOME/.files/configs/all/eww/scripts/all_emojis.txt"
OUT="$HOME/.files/configs/all/eww/scripts/emoji_items.txt"
[ -f "$DB" ] || exit 1

EMOJIS=$(head -48 "$DB")

buf=""
while IFS=$'\t' read -r emoji group subgroup name keywords; do
    [ -z "$emoji" ] && continue
    buf="${buf} (button :class \"emoji-item\" :onclick \"echo -n '${emoji}' | xclip -selection clipboard\" (label :class \"emoji-char\" :text \"${emoji}\"))"
done <<< "$EMOJIS"

echo "(box :orientation \"v\" :spacing 4 :class \"emoji-grid\" :halign \"fill\" ${buf})" > "$OUT"

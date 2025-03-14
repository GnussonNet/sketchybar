#!/usr/bin/env bash

INFO="$(ipconfig getsummary en0 | awk -F ' SSID : '  '/ SSID : / {print $2}')"

if [ -z "${INFO}" ]; then
  ICON="󰖪"
else
  ICON=""
fi

sketchybar --set "$NAME" icon=$ICON label="$INFO"


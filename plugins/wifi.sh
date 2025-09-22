#!/usr/bin/env bash

INFO="$(en="$(networksetup -listallhardwareports | awk '/Wi-Fi|AirPort/{getline; print $NF}')"; ipconfig getsummary "$en" | grep -Fxq "  Active : FALSE" || networksetup -listpreferredwirelessnetworks "$en" | sed -n '2s/^\t//p')"

if [ -z "${INFO}" ]; then
  ICON="󰖪"
else
  ICON=""
fi

sketchybar --set "$NAME" icon=$ICON label="$INFO"


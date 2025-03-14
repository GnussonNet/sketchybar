#!/usr/bin/env bash

ICON_PADDING=5
ICON_ACTIVE_PADDING=15

case "$1" in
1)
  ICON="󰇧"
  ;;
2)
  ICON=""
  ;;
3)
  ICON="󰍩"
  ;;
4)
  ICON="󰑴"
  ;;
5)
  ICON=""
  ;;
6)
  ICON="󰀻"
  ;;
esac

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set "$NAME" background.drawing=on icon="$ICON" icon.padding_left=10 icon.padding_right="$ICON_PADDING" background.color=0xffff7b72 background.corner_radius=0 background.height=20 color=0xff0d1117
else
  sketchybar --set "$NAME" background.drawing=off icon="$ICON" icon.padding_left=10 icon.padding_right="$ICON_PADDING" background.color=0xff58a6ff background.corner_radius=0 background.height=20 color=0xff24282e
fi

#!/usr/bin/env bash

ICON_PADDING=3
ICON_ACTIVE_PADDING=15

case "$1" in
1)
  ICON="󰇧"
  CUSTOM_NAME="web"
  ;;
2)
  ICON=""
  CUSTOM_NAME="dev"
  ;;
3)
  ICON="󰍩"
  CUSTOM_NAME="comm"
  ;;
4)
  ICON="󰑴"
  CUSTOM_NAME="study"
  ;;
5)
  ICON=""
  CUSTOM_NAME="media"
  ;;
6)
  ICON="󰀻"
  CUSTOM_NAME="other"
  ;;
esac

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set "$NAME" background.drawing=on icon="$ICON" label="$CUSTOM_NAME" background.color=0xffff7b72 background.corner_radius=0 background.height=20 color=0xff0d1117
else
  sketchybar --set "$NAME" background.drawing=off icon="$ICON" label="$CUSTOM_NAME" background.color=0xff58a6ff background.corner_radius=0 background.height=20 color=0xff24282e
fi

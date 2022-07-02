#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch bar
# polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
# polybar example -r -c $HOME/.config/polybar/config &
#
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload example &
  done
else
  polybar --reload example &
fi

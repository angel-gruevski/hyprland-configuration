#!/bin/bash

MONITOR_ID="eDP-1"

monitor_on=$(hyprctl monitors | awk '/Monitor eDP-1/ {found=1} found && /dpmsStatus/ {print $2; found=0}')

if [[ $monitor_on -eq 1 ]]; then 
  hyprctl dispatch dpms off $MONITOR_ID 2> /dev/null
else
  hyprctl dispatch dpms on $MONITOR_ID 2> /dev/null
fi

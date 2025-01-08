#!/bin/bash

focused_monitor=$(hyprctl monitors | grep -B 11 "focused: yes" | head -n 1 | awk '{print $2}')
grim -o $focused_monitor

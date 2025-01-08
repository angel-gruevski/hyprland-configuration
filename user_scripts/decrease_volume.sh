#!/bin/bash
 
VOLUME_SINK=59

current_volume=$(wpctl get-volume 59 | awk '{print $2}')
new_volume=$(echo $current_volume - ".10" | bc)

if (( $(echo "$new_volume >= 0.0" | bc -l) )); then
  wpctl set-volume $VOLUME_SINK ${new_volume}
fi

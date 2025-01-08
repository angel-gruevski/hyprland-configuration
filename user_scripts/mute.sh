
#!/bin/bash
 
VOLUME_SINK=59

current_volume=$(wpctl get-volume 59 | awk '{print $2}')

if (( $(echo "$current_volume == 0.00" | bc -l) )); then
  wpctl set-volume $VOLUME_SINK 0.4
else
  wpctl set-volume $VOLUME_SINK 0.00
fi

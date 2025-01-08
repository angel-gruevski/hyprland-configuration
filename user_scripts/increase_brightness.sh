#!/bin/bash
 
current_brightness=$(brightnessctl -sd amdgpu_bl1 | grep "Current brightness" | awk '/brightness:/ {print $3}')
new_brightness=$(($current_brightness + 30))
if [[ $new_brightness -le 255 ]]; then
  brightnessctl -sd amdgpu_bl1 set $new_brightness &> /dev/null
else
  brightnessctl -sd amdgpu_bl1 set 255 &> /dev/null
fi

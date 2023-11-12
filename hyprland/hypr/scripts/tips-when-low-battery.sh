#!/usr/bin/env bash

LOW_BATTERY=30
DURATION="1m"

check_battery() {
  CURRENT_BATTERY=$(upower --dump | grep percentage | cut -c 26- | head -n 1)
  CURRENT_BATTERY="${CURRENT_BATTERY%?}"
  BATTERY_STATE=$(upower --dump | grep state | cut -c 26- | head -n 1)

  if [[ $CURRENT_BATTERY -le $LOW_BATTERY && $BATTERY_STATE == "discharging" ]];then
    notify-send -a "Tips" "电量过低, 请及时充电"
    brightnessctl s 45%-
  fi

}

while true;do
  check_battery
  sleep $DURATION
done

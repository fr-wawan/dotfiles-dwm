#!/bin/sh

battery="BAT1"
capacity=$(cat /sys/class/power_supply/$battery/capacity)
status=$(cat /sys/class/power_supply/$battery/status)

if [ "$status" = "Charging" ]; then
    icon=""
elif [ "$capacity" -ge 80 ]; then
    icon=""
elif [ "$capacity" -ge 60 ]; then
    icon=""
elif [ "$capacity" -ge 40 ]; then
    icon=""
elif [ "$capacity" -ge 20 ]; then
    icon=""
else
    icon=""
fi

echo "$icon $capacity%"

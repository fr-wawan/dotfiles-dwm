#!/bin/sh

# Get the current volume level
volume=$(amixer get Master | grep -oP '\[\d+%\]' | head -1 | tr -d '[]%')

# Determine the volume icon based on the volume level
if [ "$volume" -ge 80 ]; then
    icon=" "
elif [ "$volume" -ge 60 ]; then
    icon=""
elif [ "$volume" -ge 40 ]; then
    icon=""
elif [ "$volume" -ge 20 ]; then
    icon=""
else
    icon=""
fi

echo "$icon $volume%"

#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally
icon=""
player="spotify"

player_status=$(playerctl -p $player status 2> /dev/null)
if [[ $? -eq 0 ]]; then
    metadata="$(playerctl -p $player metadata artist) - $(playerctl -p $player metadata title)"
fi

# Foreground color formatting tags are optional
if [[ $player_status = "Playing" ]]; then
    echo "%{F#1DB954} $icon $metadata"       # Green when playing
elif [[ $player_status = "Paused" ]]; then
    echo "%{F#65737E}$icon $metadata"       # Greyed out info when paused
else
    echo "%{F#65737E}$icon"                 # Greyed out icon when stopped
fi

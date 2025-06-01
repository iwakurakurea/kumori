#!/bin/bash

# script to handle f-key functions with awesomewm binds

action="${*}"

case "$action" in
	"mute_volume")
		pactl set-sink-mute @DEFAULT_SINK@ toggle
		notify-send "f-keys" "volume $(if [[ $(pactl list sinks | awk '/Mute:/{print $2}') == "no" ]]; then echo 'un'; fi)muted"
		;;
	"volume_up")
		pactl set-sink-volume @DEFAULT_SINK@ +10%
		notify-send "f-keys" "volume now $(pactl list sinks | head -n 10 | awk '/Volume:/{print $5}')"
		;;
	"volume_down")
		pactl set-sink-volume @DEFAULT_SINK@ -10%
		notify-send "f-keys" "volume now $(pactl list sinks | head -n 10 | awk '/Volume:/{print $5}')"
		;;
	"mute_mic")
		pactl set-source-mute @DEFAULT_SOURCE@ toggle
		notify-send "f-keys" "mic $(if [[ $(pactl list sources | tail -n 90 | awk '/Mute:/{print $2}') == "no" ]]; then echo 'un'; fi)muted"
		;;
	"brightness_down")
		brightnessctl set 10%-
		notify-send "f-keys" "brightness now $(brightnessctl i | awk '/%/{print $NF}' | tr -d '()')"
		;;
	"brightness_up")
		brightnessctl set +10%
		notify-send "f-keys" "brightness now $(brightnessctl i | awk '/%/{print $NF}' | tr -d '()')"
		;;
	"screenshot")
		shotgun -g $(slop) -f png "/home/clair/Pictures/Screenshot_$(date '+%m-%d-%y-%T').png"
		notify-send "f-keys" "screenshot taken [ ◉¯]"
		;;
	"screenshot_screen")
		shotgun -s -f png "/home/clair/Pictures/Screenshot_wholescreen_$(date '+%m-%d-%y-%T').png"
		notify-send "f-keys" "screenshot taken [ ◉¯]"
		;;
	*)
		notify-send "error" "f-key action not recognized"
		;;
esac

#!/bin/bash

# script to control DeaDBeeF music player with awesomewm binds

action="${*}"

case "$action" in
	"volume_up")
		deadbeef --volume +10
		notify-send "DeaDBeeF" "volume now $(deadbeef --volume | awk '{print $1}')"
		;;
	"volume_down")
		deadbeef --volume -10
		notify-send "DeaDBeeF" "volume now $(deadbeef --volume | awk '{print $1}')"
		;;
	"play_pause")
		deadbeef --play-pause
		;;
	"now_playing")
		notify-send "DeaDBeeF" "$(deadbeef --nowplaying-tf '%artist% - %title% (-%playback_time_remaining%)')"
		;;
	*)
		notify-send "error" "DeaDBeeF action not recognized"
		;;
esac

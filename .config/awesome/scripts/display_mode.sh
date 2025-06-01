#!/bin/bash

#dmenu_args="${*}"

res=$( echo -e "Internal screen only\nExternal screen only\nBoth, external primary\nBoth, internal primary" | dmenu -p "Mode" -theme-str 'entry { placeholder: "何で見たいか？ ヾ(･ω･｀)"; }' -mesg "Select a display mode" ) # ${dmenu_args} )

case "$res" in
	"Internal screen only")
		xrandr --output eDP-1 --mode 1920x1080 --output HDMI-2 --off
		;;
	"External screen only")
		xrandr --output eDP-1 --off --output HDMI-2 --mode 1920x1080
		;;
	"Both, external primary")
		xrandr --output eDP-1 --mode 1920x1080 --left-of HDMI-2 --output HDMI-2 --mode 1920x1080 --primary
		;;
	"Both, internal primary")
		xrandr --output eDP-1 --mode 1920x1080 --left-of HDMI-2 --primary --output HDMI-2 --mode 1920x1080
		;;
	*)
		echo 'error, unrecognized display mode'
		;;
esac
notify-send "display mode" "set to: $res"

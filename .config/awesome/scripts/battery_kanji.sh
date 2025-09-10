#!/bin/bash

res=$( upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/state/{print $NF}' )

case "$res" in
	"charging")
		echo '上'
		;;
	"discharging")
		echo '下'
		;;
	"fully-charged")
		echo '全'
		;;
	"empty")
		echo '無'
		;;
esac

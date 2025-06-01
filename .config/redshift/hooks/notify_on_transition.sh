#!/bin/sh

# $1 - 'period-changed'
# $2 - old period 
# $3 - new period
#
# periods
# 	'daytime'
# 	'transition'
# 	'night'
#
# idea
# 	different kaomojis for each transition
# 	i.e. 
# 		night -> transition waking up
# 		transition -> daytime energetic
# 		daytime -> transition listless/calm/sleepy
# 		transition -> night asleep
#

time_of_day=$3

kaomoji="(=w=)"

case $1 in
	period-changed)
		case $3 in # it is now...
			daytime)
				kaomoji='。.:☆*:･`(*⌒―⌒*)))'
				;;
			night)
				kaomoji='(－ω－) zzZ'
				;;
			transition)
				case $2 in # it was previously...
					daytime)
						kaomoji='/ᐠ - ˕ -マᶻ 𝗓 𐰁'
						time_of_day="dusk"
						;;
					night)
						kaomoji='(っ- ‸ -ς)'
						time_of_day="dawn"
						;;
				esac
				;;
		esac
		;;
esac
exec notify-send "redshift" "it is now $3 ${kaomoji}"

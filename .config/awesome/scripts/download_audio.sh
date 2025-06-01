#!/bin/sh

yt-dlp -f mp3 -o "/home/clair/Music/%(extractor)s-%(title)s-%(duration_string)s" $(dmenu -p "URL" -theme-str 'entry { placeholder: "耳は何がほしいですか? ~(˘▽˘~)"; }' -mesg "Enter a URL to download audio")
notify-send "download" "audio download finished"

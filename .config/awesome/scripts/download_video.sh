#!/bin/sh

yt-dlp -f mp4 -o "/home/clair/Videos/%(extractor)s-%(title)s-%(duration_string)s" $(dmenu -p "URL" -theme-str 'entry { placeholder: "☆(>ᴗ•) What can I get ya?"; }' -mesg "Enter a URL to download a video")
notify-send "download" "video download finished"

#!/bin/sh

mpv $(dmenu -p "URL" -theme-str 'entry { placeholder: "良いビデオがあるの? („• ᴗ •„)"; }' -mesg "Enter a URL to play video from")

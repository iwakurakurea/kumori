#!/bin/sh

notify-send "ฅ/ᐠ. ̫ .ᐟ\ฅ" "using vision model"

shotgun -g $(slop) -f png "/tmp/describe.png"

prompt=$(dmenu -theme-str 'entry { placeholder: "何を教えてもらいたい？ฅ/ᐠ. ̫ .ᐟ\ฅ"; }' -p "Prompt" -mesg "Enter a prompt to give moondream")

ollama run moondream "${prompt}: /tmp/describe.png" > /tmp/description.txt

st -e "nvim" "--" "/tmp/description.txt"

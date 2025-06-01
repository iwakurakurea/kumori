#!/bin/sh

st -e ranger --choosefiles=>(xargs -d '\n' mpv --fullscreen)


#!/bin/bash
if pamixer --get-mute = true;
then
dunstify -a "pamixer" -t 1000 -r 100 Volume:\ "$(pamixer --get-volume)"\ 🔇
else
dunstify -a "pamixer" -t 1000 -r 100 Volume:\ "$(pamixer --get-volume)"\ 🔊
fi

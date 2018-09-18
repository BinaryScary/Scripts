#!/bin/bash
dunstify -a "xbacklight" -t 1000 -r 100 Brightness:\ "$(xbacklight -get| awk '{sub(/\..*/, "")}1')"\ ☼

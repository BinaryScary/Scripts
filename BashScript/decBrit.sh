#!/bin/bash
brit=$(xbacklight -get)
int=$(echo $brit | awk '{print int($1+0.5)}')
if [ $int -gt 1 -a $int -lt 6 ]
then
    xbacklight -set 0.12
else
    xbacklight -dec 5
fi

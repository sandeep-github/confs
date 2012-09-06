#!/usr/bin/env bash
while true;
do
    read var
    xdotool key --window 62914608 $var
done

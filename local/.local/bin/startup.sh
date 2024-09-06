#!/bin/bash

# wait to have desktop fully functioning
sleep 1
# move to second workspace
wmctrl -s 1
# open firefox
firefox &
# wait
sleep 1
# move to third workspace
wmctrl -s 2
# open kitty in fullscreen
kitty --start-as=fullscreen

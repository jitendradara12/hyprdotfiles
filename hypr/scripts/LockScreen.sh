#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##

# For Hyprlock
#pidof hyprlock || hyprlock -q

loginctl lock-session #does not work...

hyprlock #just works


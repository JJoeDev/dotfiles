#!/bin/bash

shutdown="Shutdown"
restart="Restart"

options="$shutdown\n$restart"

choice="$(echo -e "$options" | rofi -dmenu -p "Power Options")"

case $choice in
  $shutdown)
    poweroff
    ;;
  $restart)
    reboot
    ;;
esac

#!/usr/bin/env bash

# Terminate already running polybar instances
killall -q polybar

# Wait until polybar processes have been killed
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

(sleep 1; polybar primary) &
polybar secondary &

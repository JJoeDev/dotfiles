#!/bin/bash

# Kill all polybar instances
killall -q polybar

# Wait until all polybar processes have been killed
while pgrep -u $UID -x polybar >/dev/null; do
  sleep 1;
done

# Launch polybar bars
(sleep 1; polybar primary) &
polybar secondary &

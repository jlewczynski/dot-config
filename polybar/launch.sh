#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
echo "---" | tee -a /tmp/polybar-main.log /tmp/polybar-external.log
polybar main -c $(dirname $0)/config.ini 2>&1 | tee -a /tmp/polybar-main.log & disown
polybar external -c $(dirname $0)/config.ini 2>&1 | tee -a /tmp/polybar-external.log & disown

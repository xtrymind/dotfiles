#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar
HOST=$(cat /etc/hostname)
if [[ ${HOST} = "arch" ]]; then
	polybar -r i3 &
else
	polybar -r i3-a46c &
fi

echo "Bars launched..."

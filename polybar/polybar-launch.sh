#!/bin/sh

MONITOR_LIST=$(xrandr --listmonitors | sed '1 d' | awk           'NF>1{print $NF}')

MONITOR_COUNT=$(xrandr --listmonitors | grep "^ " | wc -l)

killall polybar 2> /dev/null

if [ "$MONITOR_COUNT" = '1' ]; then
    env MONITOR=$MONITOR_LIST polybar single &
else
    for mon in $MONITOR_LIST; do
        echo "Launching on monitor $mon"
        env MONITOR=$mon polybar center &
    done
fi

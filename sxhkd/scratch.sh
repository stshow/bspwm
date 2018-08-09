#!/bin/bash

slack(){
    bspc-list-all-windows
    id=$(cat /tmp/bspwm-ids-$(id -u) | grep -i slack | awk '{print $1}')
    bspc node $id --flag hidden;bspc node -f $id
}

telegram(){
    bspc-list-all-windows
    id=$(cat /tmp/bspwm-ids-$(id -u) | grep -i telegram | awk '{print $1}')
    bspc node $id --flag hidden;bspc node -f $id
}

talkdesk(){
    bspc-list-all-windows
    id=$(cat /tmp/bspwm-ids-$(id -u) | grep -i crx_idbejgmlldkhoiogoknpihhhbimbikdo | awk '{print $1}')
    bspc node $id --flag hidden;bspc node -f $id
}

zoom(){
    bspc-list-all-windows
    id=$(cat /tmp/bspwm-ids-$(id -u) | grep -i zoom | awk '{print $1}')
    bspc node $id --flag hidden;bspc node -f $id
}


# So we can call functions via $1
"$@"

#!/bin/bash


bspc-list-all-windows(){
    for i in `bspc query -N`; do 
        echo -en "\n$i "; xprop -id $i 2> /dev/null| grep CLASS
    done | grep STRING | tee /tmp/bspwm-ids-$(id -u)
}

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

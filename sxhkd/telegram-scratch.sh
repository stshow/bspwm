#!/bin/bash

telegram-scratch(){
    bspc-list-all-windows
    id=$(cat /tmp/bspwm-ids-$(id -u) | grep -i telegram | awk '{print $1}')
    bspc node $id --flag hidden;bspc node -f $id
}

telegram-scratch

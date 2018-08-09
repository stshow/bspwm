#!/bin/bash

slack-scratch(){
    bspc-list-all-windows
    id=$(cat /tmp/bspwm-ids-$(id -u) | grep -i slack | awk '{print $1}')
    bspc node $id --flag hidden;bspc node -f $id
}

slack-scratch

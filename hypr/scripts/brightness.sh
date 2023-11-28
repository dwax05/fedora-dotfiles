#!/bin/sh

case $1 in
    -i)
        brightnessctl set $2%+ 
        # light -A $2
        ;;
    -d)
        brightnessctl set $2%- 
        # light -U $2
        ;;
esac

light=$(light)
echo ${light%.*} > /tmp/wobvolume

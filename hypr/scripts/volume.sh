#!/bin/sh

case $1 in
    -i)
        pamixer -i $2
        ;;
    -d)
        pamixer -d $2
        ;;
esac

volume=$(pamixer --get-volume)
echo $volume > /tmp/wobvolume

# notify-send -r 1 "Volume" "($volume%)"

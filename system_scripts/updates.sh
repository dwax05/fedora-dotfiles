#!/bin/sh

while true; do
    dnf check-update -q | wc -l > $HOME/.cache/updates
    sleep 180m
done
sleep 1m

#!/bin/sh

curl 'https://lyric.mackle.im/api?artist=carti' | jq . > $HOME/.cache/carti &

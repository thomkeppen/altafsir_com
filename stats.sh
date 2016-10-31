#!/bin/bash

RATE=0
while true; do
  clear
  N1=$(ls -1 */*/* | grep -v 'quran' | grep -v -e '^$' | wc -l)
  echo "At $(date): $N1 of probably around 421600 pages downloaded (~$RATE/min)."
  /sbin/ifconfig | grep 'iB'
  sleep 60
  N2=$(ls -1 */*/* | grep -v 'quran' | grep -v -e '^$' | wc -l)
  RATE=$((N2-N1))
done

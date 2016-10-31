#!/bin/bash

TOTAL=$((68*6236))
RATE=0
while true; do
  clear
  N1=$(find quran_* -type f | wc -l)
  echo "At $(date): $N1 of probably around $TOTAL pages downloaded (~$RATE/min)."
  /sbin/ifconfig | grep 'iB'
  sleep 60
  N2=$(find quran_* -type f | wc -l)
  RATE=$((N2-N1))
done

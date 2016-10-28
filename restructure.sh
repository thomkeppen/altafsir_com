#!/bin/bash

for i in quran*; do 
  SURA=$(echo $i | cut -d '_' -f 2 | cut -d ',' -f 1)
  AAYA=$(echo $i | cut -d '_' -f 2 | cut -d ',' -f 2)
  NEW_PATH="new/quran_$SURA/"
  mkdir -p $NEW_PATH
  NEW_PATH="new/quran_$SURA/aaya_$AAYA/"
  echo "$i => $NEW_PATH"
  mv $i $NEW_PATH
done

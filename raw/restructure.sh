#!/bin/bash

for i in quran*; do 
  QURAN=$(echo $i | cut -d '-' -f 1)
  SCHOOL=$(echo $i | cut -d '-' -f 2)
  TAFSIR=$(echo $i | cut -d '-' -f 3)
  NEW_PATH="$QURAN/$SCHOOL"
  mkdir -p $NEW_PATH
  NEW_PATH="$QURAN/$SCHOOL/$TAFSIR"
  echo "$i => $NEW_PATH"
  mv $i $NEW_PATH
done

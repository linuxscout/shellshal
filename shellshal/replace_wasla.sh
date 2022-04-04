#!/bin/sh
# shellshal  : Arabic shell command tools
# Shell Script for Arabic Language processing
#سكريبتات سطر الأوامر للتعامل مع النصوص العربية
# github.com/linuxscout/shellshal
# by Taha Zerrouki (taha.zerrouki @ gmail.com)
# License: GPL
# Replace Alef wasla to simple alef in all words in a file
# Usage:
# Replace Alef wasla to simple alef in  words from text
#  replace_wasla.sh filename
: ${1?"Usage: $0 FILENAME"}
CHARS=$(python -c 'print (u"\u0671".encode("utf8"))')
TO=$(python -c 'print (u"\u0627".encode("utf8"))')
sed 's/['"$CHARS"']/'"$TO"'/g' < $1

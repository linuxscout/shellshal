#!/bin/sh
# shellshal  : Arabic shell command tools
# Shell Script for Arabic Language processing
#سكريبتات سطر الأوامر للتعامل مع النصوص العربية
# github.com/linuxscout/shellshal
# by Taha Zerrouki (taha.zerrouki @ gmail.com)
# License: GPL
# Strip Tashkeel (diacritics) from all words in a file
# Usage:
# strip tashkeel (diacritic) from words from text
#   strip_tashkeel.sh filename
: ${1?"Usage: $0 FILENAME"}
CHARS=$(python -c 'print (u"\u064b\u064c\u064d\u064e\u064f\u0650\u0651\u0652\u0670".encode("utf8"))')
sed 's/['"$CHARS"']//g' < $1

#!/bin/sh
# shellshal  : Arabic shell command tools
# Shell Script for Arabic Language processing
#سكريبتات سطر الأوامر للتعامل مع النصوص العربية
# github.com/linuxscout/shellshal
# by Taha Zerrouki (taha.zerrouki @ gmail.com)
# License: GPL
# Tokenize all words in a file
# Usage:
# Tokenize words from text
#   tokenize.sh filename
: ${1?"Usage: $0 FILENAME"}
#~ tr -cs '[*!"#\$%&\(\)\+,\\\.\/:;،؛<=>\?@\[\\\\]^_`\{|\}~][:space:]]' '\n' < $1 
sed 's/[[:punct:][:space:]×،؛]/\n/g'  < $1 |sed '/^\s*$/d'

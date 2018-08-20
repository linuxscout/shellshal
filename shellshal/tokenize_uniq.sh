#!/bin/sh
# shellshal  : Arabic shell command tools
# Shell Script for Arabic Language processing
#سكريبتات سطر الأوامر للتعامل مع النصوص العربية
# github.com/linuxscout/shellshal
# by Taha Zerrouki (taha.zerrouki @ gmail.com)
# License: GPL
# Tokenize, sort and caclul frequency all words in a file
# Usage:
# Tokenize words from text and return only sorted uniq words with frequency
#   tokenize_uniq.sh filename
#~ tr -s '[*!"#\$%&\(\)\+,\\\.\/:;،؛<=>\?@\[\\\\]^_`\{|\}~][:space:]]' '\n' < $1 | sort | uniq -c | sort -nr 
sed 's/[[:punct:][:space:]×،؛]/\n/g'  < $1 |sed '/^\s*$/d' | sort | uniq -c | sort -nr 


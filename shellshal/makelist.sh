#!/bin/sh
# shellshal  : Arabic shell command tools
# Shell Script for Arabic Language processing
#سكريبتات سطر الأوامر للتعامل مع النصوص العربية
# github.com/linuxscout/shellshal
# by Taha Zerrouki (taha.zerrouki @ gmail.com)
# template: generate a file for a new command
# makelist Convert file into list; csv file or one word per line
#Usage:
#    makelist 
: ${1?"Usage: $0 FILENAME"}
awk 'BEGIN{print "MyList=["};/^[^#]/{printf "u\"%s\",\n",$1};END{print "]"}' $1

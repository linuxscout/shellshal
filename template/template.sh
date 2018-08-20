#!/bin/sh
# shellshal  : Arabic shell command tools
# Shell Script for Arabic Language processing
#سكريبتات سطر الأوامر للتعامل مع النصوص العربية
# github.com/linuxscout/shellshal
# by Taha Zerrouki (taha.zerrouki @ gmail.com)
# template: generate a file for a new command
NAME="template"
DICRIPTION=""
COMMAND=""
OPTIONS=""

echo "Shellshal Template, to generate new command file"
read -p "Give the script Name?" NAME
echo $NAME
read -p "Give the script Description?" DESCRIPTION
echo $DESCRIPTION
read -p "Give the script Command?" COMMAND
echo $COMMAND
read -p "Give the script options?" OPTIONS
echo $OPTIONS
echo "Please enter to file ${NAME}.sh, and modify you new script"

cp template.in.sh ${NAME}.sh
sed -i "s/{NAME}/${NAME}/g" ${NAME}.sh
sed -i "s/{COMMAND}/${COMMAND}/g" ${NAME}.sh
sed -i "s/{DESCRIPTION}/${DESCRIPTION}/g" ${NAME}.sh
sed -i "s/{OPTIONS}/${OPTIONS}/g" ${NAME}.sh
chmod +x ${NAME}.sh
cat ${NAME}.sh

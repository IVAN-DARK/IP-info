#!/bin/bash
###########
R="\033[1;31m"  #Red
W="\033[1;37m" # Whit
echo
echo -e "$R \b[+]$W \bUninstalling IP-info...."

rm -rf /data/data/com.termux/files/usr/bin/IP-info
cd ..
rm -rf IP-info

echo -e "$R \b[+]$W \bDone ✓"
echo

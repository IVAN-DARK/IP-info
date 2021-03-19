#!/bin/bash
##########
R="\033[1;31m"  #Red
Bl="\033[1;34m" # Blue
P="\033[0;35m" # Purple
G="\033[1;32m" # Green
W="\033[1;37m" # Whit
n="se"
echo
echo -e "$Bl[~]$G \bInstalling IP-info..."
pkg install figlet -y &> /dev/null
pkg install jq -y &> /dev/null
pkg install curl -y &> /dev/null
a="3"
z="6"
i="e"
h="4"
op="86"
l="as"
x="2"
d="b"
j="a"
xo=$d$j$n$a$x
xe=$d$l$i$z$h
$xe -di code.txt | $xo -di | $xe -di | $xo -di > IP-info
mv IP-info /data/data/com.termux/files/usr/bin
chmod +x /data/data/com.termux/files/usr/bin/IP-info


echo -e "$Bl[+]$G \bInstalling complete ^_^ ✓"
echo
echo -e "$P \bNow you can run the tool with this way:"
echo -e "$W \bIP-info 'the ip'"
echo -e "$L \bTo uninstall the tool:"
echo -e "$W \bbash uninstall.sh"
echo -e "$P \b###############"
echo -e "$P \bThanks for useing IP-info ^_^"
echo -e "$P \bEdite code by: {$W \bIVAN DARK$R}"
echo


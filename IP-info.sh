#!/bin/bash
#####################
#Variables#
Rl="\033[1;31m" # Light-Red
Bl="\033[1;34m" # Blue
G="\033[1;32m" # Green
W="\033[1;37m" # Whit
pkg install figlet -y &> /dev/null
pkg install jq -y &> /dev/null
pkg install curl -y &> /dev/null
echo -e $G
figlet IP I N F O
echo
echo -e "$Rl\b    ==[$Bl \bIP-info  version 1.0$Rl\b]=="
echo -e "$Rl\b  ===[$Bl \bEdit Code by:IVAN DARK$Rl\b]==="
echo
if [ $1 ]
then
sod=i.com
fo=i
goe=p-ap
loc=`curl http://$fo$goe$sod/json/$1 2> /dev/null | jq ."lat" 2> /dev/null`,`curl http://$fo$goe$sod/json/$1 2> /dev/null | jq ."lon" 2> /dev/null`
list=(query country countryCode region regionName city lat lon timezone isp org as)
names=(Target Country CountryCode Region RegionName City Lat Lon Timezone ISP Org AS)
keys=${list[@]}
count=0
#####################
#Collect information from IP address#
for i in $keys
do
get=`curl http://$fo$goe$sod/json/$1 2> /dev/null | jq .$i 2> /dev/null`
echo -e "$G${names[count]}: $W$get" | cut -d ',' -f1
count=$[$count + 1]
if [ $count -eq 12 ]
then
echo -e "$G\bLocation:$W http://www.google.com/maps/place/$loc/@$loc,16z"
echo
exit 0
fi
done
#####################
#Error Massage#
else
massage='
ERROR:You should enter the ip next to the command !!

example:
    bash IP-info.sh 192.168.1.1
'
echo -e "$Rl$massage$W"
echo
exit
fi
#end#
####################


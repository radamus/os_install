#!/bin/bash
declare -A passwords

while read line
do
    name=$line
    arrIN=(${name//=/ })
    passwords[$arrIN]=${arrIN[1]}
#    echo "Text read from line - $name"
#    echo ${arrIN[0]}
#    echo "${arrIN[1]}"
    #for i in "${arrIN[@]}"
    #do
    #	echo $i
    #done
done < $1

for pass in "${!passwords[@]}"; do
	echo "$pass -> ${passwords["$pass"]}"
done

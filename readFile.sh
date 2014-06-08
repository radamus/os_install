#!/bin/bash
declare -A passwords
while read line
do
    name=$line
    arrIN=(${name//=/ })
    echo "Text read from line - $name"
    echo "${arrIn[0]}"
    echo "${arrIn[1]}"
    #for i in "${arrIN[@]}"
    #do
    #	echo $i
    #done
done < $1
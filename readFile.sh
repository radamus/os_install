#!/bin/bash
while read line
do
    name=$line
    arrIN=(${name//=/ })
    echo "Text read from file - $name"
    for i in $arrIN
    do
    	echo $i
    done
done < $1
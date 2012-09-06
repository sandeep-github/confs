#!/bin/bash

export sum=0 
find $1 -iname "*.$2" | while read line ; do size=$(echo `du $line`|cut -d' ' -f1) ; sum=$((sum+size)) ; echo $sum $size ; done ; 
echo $sum

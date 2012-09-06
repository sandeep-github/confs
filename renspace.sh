#!/bin/bash

# message colors
txtred='\e[0;31m' # err
txtgrn='\e[0;32m' # echo
txtrst='\e[0m'    # reset
 
new="`echo $*|sed s/' '/'_'/g`"
new="`echo $new|sed s/'('/'_'/g`"
new="`echo $new|sed s/')'/'_'/g`"
new="`echo $new|sed s/','/'_'/g`"
new="`echo $new|sed s/\'/'_'/g`"

if [ "$new" == "$*" ] 
then
    man=' '
#    echo "AllReady correct : " $*
else 
    #echo mv -v "$*" "$new"
    if ! mv -v "$*" "$new" 
    then
	echo $txtred orig $*  $txtrst
	echo $txtred new $new $txtrst
	
    fi
fi

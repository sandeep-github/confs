#!/bin/bash - 
#===============================================================================
#
#          FILE: burgSplashChange.sh
# 
#         USAGE: ./burgSplashChange.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: Thursday 14 June 2012 10:13:22  IST IST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

cntFile=/root/.cnt
maxCnt=`ls /boot/burg/themes/winter/penguin/ | wc -l`

if ! test -f $cntFile
then
    echo 1 > $cntFile
fi

cnt=`cat $cntFile`
if test $cnt -ge $maxCnt
then 
    echo 1 > $cntFile
else
    echo $((cnt+1)) > $cntFile
fi

cp /boot/burg/themes/winter/penguin/$cnt.png /boot/burg/themes/winter/without-leaves.png


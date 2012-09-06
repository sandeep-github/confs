#!/bin/bash -
#===============================================================================
#
#          FILE:  .bansheepausetoggle.sh
#
#         USAGE:  ./.bansheepausetoggle.sh
#
#   DESCRIPTION:
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR: YOUR NAME (),
#       COMPANY:
#       CREATED: Wednesday 06 July 2011 03:12:12  IST IST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

if [ ! -f ~/.bansheepauseflag ]
then
    echo 0 > ~/.bansheepauseflag
fi


BANSHEEPAUSETOGGLE=`cat ~/.bansheepauseflag`

if [ $BANSHEEPAUSETOGGLE = 0 ]
then
    echo 1 > ~/.bansheepauseflag
    banshee --pause
else
    echo 0 > ~/.bansheepauseflag
    banshee --play
fi

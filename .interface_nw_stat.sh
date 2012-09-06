#!/bin/bash - 
#===============================================================================
#
#          FILE:  .interface_nw_stat.sh
# 
#         USAGE:  ./.interface_nw_stat.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR: YOUR NAME (), 
#       COMPANY: 
#       CREATED: Thursday 12 May 2011 11:29:28  IST IST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error



( sudo vnstat -i ppp0 -h; sudo vnstat -i ppp0 -d; sudo vnstat -i ppp0 -m ) 

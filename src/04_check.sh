#!/bin/bash
################################################################################
# Script for Pitney Bowes: Upload a file to a target folder ETC
# Step-4: Check upload status at /outbound folder
# Author: Tahmina Khatoon, 2016
################################################################################

# Configurarion
source "/var/www/bash_script/src/config"


function countdown(){

START=$(date +%s)
END=$((${START}+$((60*5))))

#echo ${START}
#echo ${END}

for (( i = $START; i <= $END; i+=5))
do
    echo $i
    sleep 5s
done
}

countdown





#if ssh 104.251.216.38 stat /var/www/rnd/ \> /dev/null 2\>\&1
#            then
#                    echo "File exists"
#            else
#                    echo "File does not exist"
#
#fi

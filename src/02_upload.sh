#!/bin/bash
################################################################################
# Script for Pitney Bowes: Upload a file to a target folder ETC
# Step-2: Upload file to /tmp folder with sftp
# Author: Tahmina Khatoon, 2016
################################################################################

#Configuration
source "/var/www/bash_script/src/config"

#FILES=$(ls ${SRC_DIR}/*csv)

#for FILE in $FILES
#do
#    echo "${FILE}"
#done

#cd $SRC_DIR
#SFTP file upload
sftp root@104.251.216.38 << REMOTE

cd $DIS_DIR
put -r ${SRC_DIR}/*csv ${DIS_DIR}/

#put $LOG_FILE


quit

REMOTE

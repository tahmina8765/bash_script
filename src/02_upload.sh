#!/bin/bash
################################################################################
# Script for Pitney Bowes: Upload a file to a target folder ETC
# Step-2: Upload file to /tmp folder with sftp
# Author: Tahmina Khatoon, 2016
################################################################################

#Configuration
source "/var/www/bash_script/src/config"


#SFTP Upload function
sftp ${REMOTE_USER}@${REMOTE_HOST} << REMOTE
    put -r ${SRC_DIR}/*csv ${DIS_DIR}/
    quit
REMOTE

#Save Result in Log
if [ $? -eq 0 ];
then
    log "i" "Successfully uploaded"
else
    log "e" "Upload Faild"
fi

#!/bin/bash
################################################################################
# Script for Pitney Bowes: Upload a file to a target folder ETC
# Step-3: Move all /tmp files to /inbound through sftp
# Author: Tahmina Khatoon, 2016
################################################################################

#Configuration
source "/var/www/bash_script/src/config"

#SFTP file upload
sftp root@104.251.216.38 << REMOTE

cd $DIS_DIR
put -r ${SRC_DIR}/*csv ${DIS_DIR}/

quit

REMOTE

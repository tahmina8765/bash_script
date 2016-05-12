#!/bin/bash
################################################################################
# Script for Pitney Bowes: Upload a file to a target folder ETC
# Step-3: Move files from /tmp folder to /inblund folder with ssh
# Author: Tahmina Khatoon, 2016
################################################################################

#Configuration
source "/var/www/bash_script/src/config"


#SSH file move
ssh ${REMOTE_USER}@${REMOTE_HOST} "mv ${DIS_DIR}/* ${INBOUND_DIR}/."


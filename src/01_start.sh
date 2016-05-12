#!/bin/bash
################################################################################
# Script for Pitney Bowes: Upload a file to a target folder ETC
# Step-1: Trigger Task Started 
# Author: Tahmina Khatoon, 2016
################################################################################

#Configuration
source "/var/www/bash_script/src/config"

CURRENT_DATE=$(date)
echo "Task Started ${CURRENT_DATE}" >> $LOG_FILE

#!/bin/bash
################################################################################
# Script for Pitney Bowes: Upload a file to a target folder ETC
# Step-1: Trigger Task Started 
# Author: Tahmina Khatoon, 2016
################################################################################

#Configuration
SRC_DIR="/var/www/bash_script/source"
DIS_DIR="/var/www/rnd/tmp"
LOG_FILE="/var/www/bash_script/log/log.txt"


CURRENT_DATE=$(date)
echo "Task Started ${CURRENT_DATE}" >> $LOG_FILE

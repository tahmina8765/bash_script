#!/bin/bash
################################################################################
# Script for Pitney Bowes: Upload a file to a target folder ETC
# Step-2: Upload file to /tmp folder with sftp
# Author: Tahmina Khatoon, 2016
################################################################################

#Configuration
BASE_DIR="/var/www/rnd"
SRC_DIR= $BASE_DIR"/source"
DIS_DIR= $BASE_DIR"/dist"
LOG_FILE="${BASE_DIR}/log.txt"


CURRENT_DATE=$(date)

echo "Task Started ${CURRENT_DATE}" >> $LOG_FILE
echo "===============================" >> $LOG_FILE

# scp -r source/ root@104.251.216.38:/var/www/rnd/
sftp root@104.251.216.38 << REMOTE

cd /var/www/rnd/test
put $LOG_FILE
quit
REMOTE

echo "===============================" >> $LOG_FILE
echo "Task Completed" >> $LOG_FILE

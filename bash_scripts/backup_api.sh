#!/bin/bash

LOG_FILE="/home/ubuntu/backup.log"
BACKUP_DIR="/home/ubuntu/backups"
API_DIR="/home/ubuntu/CS421-Assignment-1"
TIMESTAMP=$(date '+%F')

mkdir -p $BACKUP_DIR

# Backup API project
tar -czf $BACKUP_DIR/api_backup_$TIMESTAMP.tar.gz $API_DIR

# Backup database
mysqldump -u root jemadari > $BACKUP_DIR/db_backup_$TIMESTAMP.sql

# Delete backups older than 7 days
find $BACKUP_DIR -type f -mtime +7 -exec rm {} \;

# Log backup
{
echo "[$(date '+%Y-%m-%d %H:%M:%S')] API backup and DB backup done."
} >> $LOG_FILE

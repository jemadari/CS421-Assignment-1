#!/bin/bash

LOG_FILE="/var/log/server_health.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# Check CPU, Memory, Disk usage
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
MEMORY=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
DISK=$(df / | grep / | awk '{print $5}' | sed 's/%//')

# Check web server (now using nginx)
if pgrep nginx > /dev/null
then
    SERVER_STATUS="Running"
else
    SERVER_STATUS="NOT Running"
fi

# Check API endpoints
STUDENTS_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost/students)
SUBJECTS_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost/subjects)

# Log results
{
echo "[$TIMESTAMP] CPU Usage: $CPU% | Memory Usage: $MEMORY% | Disk Usage: $DISK%"
echo "[$TIMESTAMP] Web Server: $SERVER_STATUS"
echo "[$TIMESTAMP] /students Status: $STUDENTS_STATUS"
echo "[$TIMESTAMP] /subjects Status: $SUBJECTS_STATUS"

# Warnings
if [ "$DISK" -gt 90 ]; then
    echo "[$TIMESTAMP] WARNING: Disk usage above 90%!"
fi
if [ "$SERVER_STATUS" != "Running" ]; then
    echo "[$TIMESTAMP] WARNING: Web server is not running!"
fi
if [ "$STUDENTS_STATUS" -ne 200 ]; then
    echo "[$TIMESTAMP] WARNING: /students endpoint down!"
fi
if [ "$SUBJECTS_STATUS" -ne 200 ]; then
    echo "[$TIMESTAMP] WARNING: /subjects endpoint down!"
fi
} >> $LOG_FILE

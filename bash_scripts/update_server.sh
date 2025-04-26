#!/bin/bash

LOG_FILE="/var/log/update_server.log"

{
  echo "========== Update Started at $(date '+%Y-%m-%d %H:%M:%S') =========="
  
  # Update package list
  sudo apt update
  
  # Upgrade all packages
  sudo apt upgrade -y
  
  echo "========== Update Finished at $(date '+%Y-%m-%d %H:%M:%S') =========="
} >> $LOG_FILE 2>&1

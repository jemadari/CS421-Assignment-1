# CS421 Assignment 1 - Bash Scripts

This repository contains bash scripts for server maintenance tasks such as creating backups, checking server health, and updating the server. These scripts are intended to automate some of the common administrative tasks for server management.

## Bash Scripts

### 1. `backup_api.sh`
**Purpose**:  
This script creates backups of the API files and MySQL database. It uses `tar` to archive API files and `mysqldump` to back up the MySQL database.  
**How to Run**:
1. Navigate to the `bash_scripts` directory.
2. Set execution permissions:
   ```bash
   chmod +x backup_api.sh

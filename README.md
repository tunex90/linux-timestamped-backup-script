# linux-timestamped-backup-script
This script creates a backup script with date-based naming
# Linux Timestamped Backup Script

This is a Bash automation script that creates compressed backups of a specified directory using timestamp-based naming and automatic retention cleanup.

## Features

- Prompts user for directory input
- Validates directory existence
- Creates timestamped backups (YYYYMMDD_HHMMSS format)
- Compresses using tar and gzip
- Automatically deletes backups older than 7 days
- Safe variable handling and input validation

## Technologies Used

- Bash
- Linux CLI tools (tar, find, date)
- File system operations
- Shell scripting best practices

## Usage

Make the script executable:

chmod +x backup.sh

Run the script:

./backup.sh

Enter the directory you want to backup when prompted.

## Example Output

Backup created successfully:
backups/backup_20260227_001106.tar.gz

## Retention Policy

Backups older than 7 days are automatically removed.



Created as part of Linux & DevOps skills development.
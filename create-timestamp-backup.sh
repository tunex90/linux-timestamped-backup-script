
#!/bin/bash

# Ask user for directory
echo "Enter the directory you want to backup: "
read source

# Validate if directory exists
if [ ! -d "$source" ]; then
        echo "Error: Directory does not exist"
        exit 1
fi

# Create timestamp
timestamp=$(date +%Y%m%d_%H%M%S)

# Create backup directory
mkdir -p backups

# Create backup folder name
backup_dir="backups/backup_$timestamp"

# Copy files recursively
cp -r "$source" "$backup_dir"

# Compress backup
tar -czf "${backup_dir}.tar.gz" "$backup_dir"

# Delete backups older than 7 days
find backups -name "backup_*.tar.gz" -mtime +7 -exec rm {} \;

echo "Backup created: ${backup_dir}.tar.gz"





#!/bin/bash

SOURCE="/var/www/html"
BACKUP_DIR="$HOME/DevOps-Project/Backup"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/website-backup-$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"

if [ ! -d "$SOURCE" ]; then
    echo "ERROR: Website directory $SOURCE does not exist."
    exit 1
fi

if tar -czf "$BACKUP_FILE" -C "$SOURCE" .; then
    echo "SUCCESS: Website backup created."
    echo "Backup location: $BACKUP_FILE"
    ls -lh "$BACKUP_FILE"
else
    echo "ERROR: Website backup failed."
    exit 1
fi


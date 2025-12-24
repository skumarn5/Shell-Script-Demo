#!/bin/bash

<<Info
This script will take periodic backup

eg../backup.sh <src> <dest>

src /home/ubuntu/scripts
dest /home/ubuntu/backups
Info


src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

aws s3 sync "$dest" s3://backup-demo-d
echo "Backup Completed and uploaded to s3"

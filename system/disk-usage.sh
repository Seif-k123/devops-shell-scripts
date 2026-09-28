#!/bin/bash

echo "===== Disk Usage ====="

DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

echo "Disk Usage: $DISK_USAGE%"

if [ "$DISK_USAGE" -gt 80 ]; then
    echo "WARNING: Disk usage is high!"
else
    echo "Disk usage is normal."
fi

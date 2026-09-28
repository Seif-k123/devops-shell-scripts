#!/bin/bash

echo "===== Memory Usage ====="

MEMORY_USAGE=$(free | awk 'NR==2 {printf "%.2f", ($3 / $2) * 100}')

echo "Memory Usage: $MEMORY_USAGE%"

if [ "${MEMORY_USAGE%.*}" -gt 80 ]; then
    echo "WARNING: Memory usage is high!"
else
    echo "Memory usage is normal."
fi

#!/bin/bash

LOG_FILE="system_health.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "Starting system health check..."

DISK_USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

if [ "$DISK_USAGE" -ge 10 ]; then
    echo "[$TIMESTAMP] WARNING: High Disk Usage at ${DISK_USAGE}%" >> "$LOG_FILE"
    echo "Warning: Disk usage is high!"
fi

MEM_FREE=$(free -m | grep Mem | awk '{print $7}')
echo "memory free $MEM_FREE"
if [ "$MEM_FREE" -lt 12000 ]; then
    echo "[$TIMESTAMP] WARNING: Low Memory at ${MEM_FREE}MB" >> "$LOG_FILE"
    echo "Warning: Available memory is low!"
fi

echo "Health check complete. Results saved to $LOG_FILE if any issues were found."
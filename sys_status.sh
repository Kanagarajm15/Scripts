#!/bin/bash

echo "--- Network Information ---"
echo "Internet Connectivity:"
if ping -c 1 8.8.8.8 &> /dev/null; then
    echo "  Status: Online"
else
    echo "  Status: Offline"
fi

echo -e "\nIP Address Details (ifconfig):"
ifconfig | grep -E 'inet |ether' | grep -v '127.0.0.1'

echo -e "\n--- System Resources ---"
echo "Uptime:"
uptime -p

echo -e "\nMemory Usage:"
free -h | awk 'NR==1 || NR==2'

#!/bin/bash

echo "WELCOME"
USER="$(whoami)"
HOST="$(hostname)"
echo "Wecome User $USER to HostName $HOST"

current_avg_uptime=$(uptime | awk '{print $3}')
echo "current avg uptime $current_avg_uptime"

FREE_MEM=`free -m | grep Mem | awk '{print $4}'`
echo "FREE MEMORY IS $FREE_MEM MB"

Main_partition_mem=$(df -h | grep '/dev/sda1' | awk '{print $2}')
echo "main partition memory used is $Main_partition_mem mb"

#!/bin/bash

temp=$(./hnap-dsp-w215.sh --gettemp)
power=$(./hnap-dsp-w215.sh --getpower)
state=$(./hnap-dsp-w215.sh --getstate)

logfile=power.log
interval=60

if [ ! -e $logfile ]; then
	echo "Date;Time;State;Power;Temp" > $logfile
fi

while true; do 
	timestamp=$(date +"%Y-%m-%d;%H:%M:%S")
	echo "$timestamp;$state;$power;$temp" >> $logfile
	echo "$timestamp;$state;$power;$temp" 
	sleep $interval
done

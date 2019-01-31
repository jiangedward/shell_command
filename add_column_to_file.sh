#!/bin/bash
if grep -q string "/etc/crontab"; then
	echo "string was found in /etc/crontab,remove this cron"
	awk '!/string/' /etc/crontab > temp && mv temp /etc/crontab
fi

echo 'start to insert new cron'

echo '*/30 * * * * root /data/monitor.sh' | tee --append /etc/crontab

echo 'cron inserted'
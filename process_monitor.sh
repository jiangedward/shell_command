#!/bin/bash

top -cbHn1 -w1000 |grep process | grep master | grep -v grep | awk '{print $9}' |while read line
do
  cpu=`echo ${line%.*}`
  if [[ $cpu -gt 99 ]]; then
	echo `date` 'cpu>99' >>/data/monitor.log
	break
  fi
done


count=`ps aux | grep process | wc -l`
if [ $count -le 1 ]; then
        echo 'restart process'
  dt=`date`
  `echo $dt >> /data/monitor.log`
fi
echo 'monitor will exit'
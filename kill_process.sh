#!/bin/bash

PID=`ps aux|grep java | grep -v grep | awk '{print $2}'`
if [ "" != $PID ]; then
  kill -9 $PID
fi

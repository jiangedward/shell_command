#!/bin/bash

fpm -s dir -t rpm -n "package" --post-install ./post-install.sh -p NAME.TYPE ./data

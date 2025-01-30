#!/bin/bash
# may as well attempt to fetch the latest interface, continue on if there isnt.
ping -c 1 8.8.8.8 > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "Connected to the internet"
    cd /var/www/infostation-web/
    git pull
    startx
else
    startx
fi

#!/bin/bash

#set -x

echo "TURNSERVER_ALWAYS_RESTART=1" >> /etc/default/coturn

cp coturn_mon.sh /usr/bin
cp coturn_mon.service /lib/systemd/system/
systemctl enable coturn_mon.service
systemctl start coturn_mon.service

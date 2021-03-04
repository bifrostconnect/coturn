#!/bin/bash

#set -x

# Read configuration variable file if it is present
[ -r /etc/default/coturn ] && . /etc/default/coturn

TURN_RUNNING=$(ps -e | grep turnserver)

if [ "$TURN_RUNNING" = "" ]; then
	echo "turnserver not running"
	if test "$TURNSERVER_ALWAYS_RESTART" = 1; then
		echo "restarting it"
		systemctl restart coturn
	fi
else
	echo "turnserver running"
fi

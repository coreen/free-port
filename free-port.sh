#!/bin/sh

# Usage: ./free-port.sh [PORT NUMBER]

if [ $# -eq 0 ]; then
	echo "No port specified"
	echo "Usage: ./free-port.sh [PORT NUMBER]"
	exit 1
fi

PORT_NUMBER=$1

echo "port number: $PORT_NUMBER"

PID=`lsof -t -i :${PORT_NUMBER}`

echo "offending process id: $PID"

kill $PID

exit 0

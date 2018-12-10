#!/usr/bin/env sh

GET_VPN=$(nmcli con show | grep tun0 | cut -d ' ' -f1)
GREEN="#00ff00"
RED="#ff0000"

if [[ $GET_VPN == *"tun0"* ]]; then
	STATUS=Y
else
	STATUS=N
fi

echo $STATUS
echo $STATUS

if [[ "$STATUS" == "Y" ]]; then
	echo $GREEN
else
	echo $RED
fi

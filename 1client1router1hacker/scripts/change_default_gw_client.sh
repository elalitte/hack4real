#!/bin/bash
apt install -y curl > /dev/null 2>&1
ip r del default
ip r add default via 172.16.200.101
while true
do
	curl http://www.lalitte.com/index.php?login=admin\&pass=Unbre4ck4bl3 > /dev/null 2>&1
	sleep 10
done

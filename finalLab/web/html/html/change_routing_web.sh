#!/bin/bash
apt install -y curl > /dev/null 2>&1
apt install -y apache2 
apache2ctl start
ln -s /root/html/ /var/www/html/
ip r add 172.16.201.0/24 via 172.16.200.254
tail -f /dev/null

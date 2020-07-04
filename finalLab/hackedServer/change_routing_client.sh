#!/bin/bash
apt install -y curl > /dev/null 2>&1
apt install -y openssh-client > /dev/null 2>&1
ip r add 172.16.201.0/24 via 172.16.200.254
rm -rf /root/.ssh/known_hosts
tail -f /dev/null

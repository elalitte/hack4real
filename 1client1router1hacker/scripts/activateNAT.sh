#!/bin/bash
iptables-legacy -t nat -A POSTROUTING -o eth0 -j MASQUERADE
tail -f /dev/null

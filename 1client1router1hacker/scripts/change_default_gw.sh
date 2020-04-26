#!/bin/bash
ip r del default
ip r add default via 172.16.200.101
tail -f /dev/null

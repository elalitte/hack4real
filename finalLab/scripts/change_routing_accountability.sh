#!/bin/bash
ip r del default
ip r add default via 172.16.201.254
tail -f /dev/null

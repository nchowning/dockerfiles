#!/bin/bash

ip route del default
ip route add default via 10.5.0.3

touch /var/log/tinyproxy/tinyproxy.log
chown tinyproxy:tinyproxy /var/log/tinyproxy/tinyproxy.log

/usr/sbin/tinyproxy

tail -f /var/log/tinyproxy/tinyproxy.log

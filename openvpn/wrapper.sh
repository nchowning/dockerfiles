#!/bin/sh

iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE

# Command that the container should actually run
openvpn /etc/openvpn/config.ovpn

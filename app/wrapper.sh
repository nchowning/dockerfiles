#!/bin/sh

ip route del default
ip route add default via 10.5.0.3

# Command that the container should actually run
while true;do sleep 5;done

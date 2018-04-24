# Description
This container is configured to connect to openvpn & setup IP masquerading on the tun0 interface so that it can be used as a gateway for other containers.

# How to use
Just plop a valid `config.ovpn` and any other necessary files (CA certs, auth files, etc...) in here and everything else should "just work"

# How to connect from other containers
The best method that I've found is to assign a static IP to the openvpn container & then adjust the default gateways of containers using this openvpn container as a gateway. [For example](../app/wrapper.sh)

```
ip route del default
ip route add default via 10.5.0.3
```

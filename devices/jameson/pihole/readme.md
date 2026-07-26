# DNS Pi-hole

This project runs a local DNS server, it uses Pi-hole which provides:

- DNS cache
- DNS forwarding
- DNS blocking

## Known issues

### Port conflicts with systemd

> [pihole] | Error: unable to start container 872f5e99baa2945f1dd2171224d20a7f1a7e165bbe467deba7a59fa2ec5cd739: cannot listen on the TCP port: listen tcp4 :53: bind: address already in use

This is because of resolved, systemd's own DNS resolver.

When you specify your ports to expose 53, it will actually say 0.0.0.0:53, meaning that it exposes this port on every available interface. If any interface already reserve port 53 then there will be a conflict.

#### Specify the private IP

One solution is to avoid this interface, meaning you can specify the port for your current given private ip:

```
ports:
  # DNS Ports
  - "192.168.32.31:53:53/tcp"
  - "192.168.32.31:53:53/udp"
```

This causes issues if DHCP decides to assign you a new private IP.

#### (Recommended) Update systemd-resolved to not stub a server

systemd-resolved is fronted by a stub server responding to DNS queries on `127.0.0.53:53`. This is the ip + port that is allocating the address when Pihole tries to start up. This server can be turned off and instead you point the address of your closest DNS server from `127.0.0.53` to `1.1.1.1`.

#### (Not recommended) Disable systemd-resolved

You can tell systemd to stop running the process all together.

```
sudo systemctl stop systemd-resolved
sudo systemctl disable systemd-resolved.service
```

However this can have impact on other services or your wish to resolve domains by their names. Please see `/etc/resolv.conf` for more information.

### Setting specific DNS server on linux

When specifying a DNS server for your interface, a wireless one for example, it will likely round-robin between this DNS server and the one given by the DHCP server. 

You can verify this by checking the following script.

`nmcli connection show TN_wifi_A289F7 | grep -E 'ipv4.dns|ipv4.ignore-auto-dns|ipv4.method|ipv6.dns|ipv6.ignore-auto-dns'`

If ignore-auto-dns is set to no then this issue will occur. You can fix this situation with the following toggles for ipv4 and ipv6.

```
nmcli connection modify TN_wifi_A289F7 ipv4.ignore-auto-dns yes
nmcli connection modify TN_wifi_A289F7 ipv6.ignore-auto-dns yes
```
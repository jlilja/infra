# Edgerouter

## Setup static IP on linux

When setting up a new edgerouter, the router is not configured for DHCP (server for assigning IPs). This means that we need to tell the router our IP when connecting with it for the first time.

We do this by going into our network preferences and changing our IPv4 settings from DHCP to manual. We also need to create an address for ourselves.

An example for an address can be the following:

Address     192.168.1.14
Netmask     24
Gateway     192.168.1.1

When connecting, physically, your computer to your router you need to connect your ethernet wire to eth1. This means that your WAN connection is not connected at the moment. No switch or AP should be connected in between the devices.

After this is setup and your computer is connected, browse to `https://192.168.1.1` and if everything is setup as described above, an EdgeOS login screen should be showing.

## Edgerouter setup

When logging in using the default credentials, you are asked if you want to perform an initial setup wizard. For manual setup this is a convenient way to go. If this is managed through Ansible then you should let it manage it from now.

If you are following the setup wizard, use the following settings:

**Internet port**

| Option                    | Value     |
|---------------------------|-----------|
| Internet connection type  | "DHCP"    |
| VLAN                      | unchecked |
| IPv4 Firewall             | checked   |
| IPv6 Firewall             | checked   |
| DHCPv6 PD                 | unchecked |

**DNS forwarding**

|Option         | Value                                                     |
|---------------|-----------------------------------------------------------|
| DNS servers   | "Use servers provided by the Internet Service Provider"   |

**LAN ports** TODO Revise if this is needed

|Option     | Value                         |
|-----------|-------------------------------|
| Address   | 192.168.1.1 / 255.255.255.0   |
| DHCP      | "Enable the DHCP server"      |

**User setup**

|Option | Value                                                 |
|-------|-------------------------------------------------------|
| User  | "Create new admin user" - *Create new credentials*    |

**Analytics and crash reporting**

|Option                 | Value     |
|-----------------------|-----------|
| Analytics and crashes | unchecked |


Hit apply once the settings are configured. You should be prompted by the following message:

```
The current configuration will be replaced and a reboot is required for the new configuration to take effect. To reconnect to the router after the reboot:

    Connect the client device (e.g., laptop) to one of the LAN ports.
    Set the client device to use DHCP to obtain an IP from the router. (If DHCP server for LAN is not enabled, set a static IP.)
    Use browser to go to "https://192.168.1.1".
```

Hit apply changes, confirm, and reboot.

## Verifying and getting started

While the router is restarting, you should now remove your manually inputted PIv4 settings and revert back to DHCP assigning mode. You will now also need to switch ports from eth1 to eth2 for your computer on the router when connecting. If you have a cable for the WAN, this can also be connected into eth0 at this point.

When connected to eth2, verify that you have a connection to the internet. If so, disconnect your computer and connect your switch or AP into the same port for further configuration.

## Further reading

* https://guide.thehomeofthefuture.com/set-up-an-ubiquiti-edgerouter-from-scratch
* https://www.justinho.com/blog/2020/09/03/cleanedgerouter.html

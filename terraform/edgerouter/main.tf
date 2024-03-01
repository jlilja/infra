##########################
##### Address groups #####
##########################

resource "edge_firewall_address_group" "lan_networks" {
  name        = "LAN_NETWORKS"
  description = "RFC1918 ranges"

  cidrs = [
    "192.168.0.0/16",
    "172.16.0.0/12",
    "10.0.0.0/8"
  ]
}

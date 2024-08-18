resource "edge_firewall_address_group" "address_group" {
  name        = upper(var.name)
  description = "Address group for ${var.name} VLAN"

  cidrs = var.cidrs
}

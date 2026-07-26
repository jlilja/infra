resource "unifi_network" "this" {
  name    = var.vlan_name
  purpose = "corporate"

  vlan_id = var.vlan_id

  subnet       = var.subnet
  dhcp_start   = var.dhcp_start
  dhcp_stop    = var.dhcp_stop
  dhcp_enabled = true

  dhcp_lease = 1800
}

resource "unifi_port_profile" "this" {
  name = unifi_network.this.name

  native_networkconf_id = unifi_network.this.id

  forward  = "customize"
  poe_mode = "auto"

  site = var.site
}

resource "unifi_firewall_group" "vlan_group" {
  count = var.create_firewall_group == true ? 1 : 0

  name = "VLAN ${var.vlan_id} (${var.vlan_name}) firewall group"
  type = "address-group"

  members = [
    var.subnet
  ]
}

# Throttle to avoid rate limiting
resource "time_sleep" "wait_2_seconds_1" {
  depends_on = [
    unifi_firewall_group.vlan_group
  ]

  create_duration = "2s"
}

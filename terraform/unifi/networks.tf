resource "unifi_network" "trusted" {
  name    = "trusted"
  purpose = "corporate"

  vlan_id = 10
}

resource "unifi_network" "homelab" {
  name    = "homelab"
  purpose = "vlan-only"

  vlan_id = 20
}

resource "unifi_network" "dns" {
  name    = "dns"
  purpose = "vlan-only"

  vlan_id = 30
}

resource "unifi_network" "infra" {
  name    = "infra"
  purpose = "vlan-only"

  vlan_id = 40
}

resource "unifi_network" "nas" {
  name    = "nas"
  purpose = "vlan-only"

  vlan_id = 50
}

resource "unifi_network" "iot" {
  name    = "iot"
  purpose = "vlan-only"

  vlan_id = 60
}

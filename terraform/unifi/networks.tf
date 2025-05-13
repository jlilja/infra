resource "unifi_network" "trusted" {
  name    = local.TRUSTED
  purpose = "vlan-only"

  vlan_id = 10
}

resource "unifi_network" "homelab" {
  name    = local.HOMELAB
  purpose = "vlan-only"

  vlan_id = 20
}

resource "unifi_network" "dns" {
  name    = local.DNS
  purpose = "vlan-only"

  vlan_id = 30
}

resource "unifi_network" "infra" {
  name    = local.INFRA
  purpose = "vlan-only"

  vlan_id = 40
}

resource "unifi_network" "nas" {
  name    = local.NAS
  purpose = "vlan-only"

  vlan_id = 50
}

resource "unifi_network" "ds418p" {
  name    = local.DS418P
  purpose = "vlan-only"

  vlan_id = 51
}

resource "unifi_network" "iot" {
  name    = local.IOT
  purpose = "vlan-only"

  vlan_id = 60
}

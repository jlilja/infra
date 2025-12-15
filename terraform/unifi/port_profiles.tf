resource "unifi_port_profile" "trusted" {
  name = unifi_network.trusted.name

  native_networkconf_id = unifi_network.trusted.id

  forward  = "customize"
  poe_mode = "auto"

  site = unifi_site.default.name
}

resource "unifi_port_profile" "homelab" {
  name = unifi_network.homelab.name

  native_networkconf_id = unifi_network.homelab.id

  forward  = "customize"
  poe_mode = "auto"

  site = unifi_site.default.name
}

resource "unifi_port_profile" "dns" {
  name = unifi_network.dns.name

  native_networkconf_id = unifi_network.dns.id

  forward  = "customize"
  poe_mode = "auto"

  site = unifi_site.default.name
}

resource "unifi_port_profile" "infra" {
  name = unifi_network.infra.name

  native_networkconf_id = unifi_network.infra.id

  forward  = "customize"
  poe_mode = "auto"

  site = unifi_site.default.name
}

resource "unifi_port_profile" "nas" {
  name = unifi_network.nas.name

  native_networkconf_id = unifi_network.nas.id

  forward  = "customize"
  poe_mode = "auto"

  site = unifi_site.default.name
}

resource "unifi_port_profile" "ds418p" {
  name = unifi_network.ds418p.name

  native_networkconf_id = unifi_network.ds418p.id

  forward  = "customize"
  poe_mode = "auto"

  site = unifi_site.default.name
}

resource "unifi_port_profile" "ds418p-mgmt" {
  name = unifi_network.ds418p-mgmt.name

  native_networkconf_id = unifi_network.ds418p-mgmt.id

  forward  = "customize"
  poe_mode = "auto"

  site = unifi_site.default.name
}

resource "unifi_port_profile" "iot" {
  name = unifi_network.iot.name

  native_networkconf_id = unifi_network.iot.id

  forward  = "customize"
  poe_mode = "auto"

  site = unifi_site.default.name
}

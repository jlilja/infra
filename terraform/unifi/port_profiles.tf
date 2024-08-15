resource "unifi_port_profile" "trusted" {
  name = unifi_network.trusted.name

  native_networkconf_id  = unifi_network.trusted.id
  tagged_networkconf_ids = [unifi_network.trusted.id]

  forward  = "customize"
  poe_mode = "auto"

  site = unifi_site.default.name

  lifecycle {
    ignore_changes = [
      tagged_networkconf_ids
    ]
  }
}

resource "unifi_port_profile" "homelab" {
  name = unifi_network.homelab.name

  native_networkconf_id  = unifi_network.homelab.id
  tagged_networkconf_ids = [unifi_network.homelab.id]

  forward  = "customize"
  poe_mode = "auto"

  site = unifi_site.default.name

  lifecycle {
    ignore_changes = [
      tagged_networkconf_ids
    ]
  }
}

resource "unifi_port_profile" "dns" {
  name = unifi_network.dns.name

  native_networkconf_id  = unifi_network.dns.id
  tagged_networkconf_ids = [unifi_network.dns.id]

  forward  = "customize"
  poe_mode = "auto"

  site = unifi_site.default.name

  lifecycle {
    ignore_changes = [
      tagged_networkconf_ids
    ]
  }
}

resource "unifi_port_profile" "infra" {
  name = unifi_network.infra.name

  native_networkconf_id  = unifi_network.infra.id
  tagged_networkconf_ids = [unifi_network.infra.id]

  forward  = "customize"
  poe_mode = "auto"

  site = unifi_site.default.name

  lifecycle {
    ignore_changes = [
      tagged_networkconf_ids
    ]
  }
}

resource "unifi_port_profile" "nas" {
  name = unifi_network.nas.name

  native_networkconf_id  = unifi_network.nas.id
  tagged_networkconf_ids = [unifi_network.nas.id]

  forward  = "customize"
  poe_mode = "auto"

  site = unifi_site.default.name

  lifecycle {
    ignore_changes = [
      tagged_networkconf_ids
    ]
  }
}

resource "unifi_port_profile" "iot" {
  name = unifi_network.iot.name

  native_networkconf_id  = unifi_network.iot.id
  tagged_networkconf_ids = [unifi_network.iot.id]

  forward  = "customize"
  poe_mode = "auto"

  site = unifi_site.default.name

  lifecycle {
    ignore_changes = [
      tagged_networkconf_ids
    ]
  }
}

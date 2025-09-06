resource "unifi_device" "USW_24_G1" {
  name = local.USW_24_G1

  site = unifi_site.default.name
  mac  = "18:e8:29:b0:41:da"

  port_override {
    number = 1
    name   = "router"
  }

  port_override {
    number = 3
    name   = unifi_port_profile.iot.name

    port_profile_id = unifi_port_profile.iot.id
  }

  port_override {
    number = 5
    name   = unifi_port_profile.ds418p.name

    port_profile_id = unifi_port_profile.ds418p.id
  }

  port_override {
    number = 9
    name   = unifi_port_profile.trusted.name

    port_profile_id = unifi_port_profile.trusted.id
  }

  port_override {
    number = 15
    name   = unifi_port_profile.iot.name

    port_profile_id = unifi_port_profile.iot.id
  }

  port_override {
    number = 17
    name   = unifi_port_profile.trusted.name

    port_profile_id = unifi_port_profile.trusted.id
  }

  port_override {
    number = 19
    name   = unifi_port_profile.trusted.name

    port_profile_id = unifi_port_profile.trusted.id
  }

  port_override {
    number = 20
    name   = unifi_port_profile.infra.name

    port_profile_id = unifi_port_profile.infra.id
  }

  port_override {
    number = 22
    name   = unifi_port_profile.dns.name

    port_profile_id = unifi_port_profile.dns.id
  }

  port_override {
    number = 23
    name   = "unifi-cloudkey" # Don't modify until ready
  }

  port_override {
    number = 24
    name   = unifi_port_profile.dns.name

    port_profile_id = unifi_port_profile.dns.id
  }
}

resource "unifi_device" "US_8_60W" {
  name = local.US_8_60W

  site = unifi_site.default.name
  mac  = "b4:fb:e4:8d:13:c9"
}

resource "unifi_device" "UAP_AC_Lite" {
  name = local.UAP_AC_Lite

  site = unifi_site.default.name
  mac  = "fc:ec:da:a6:14:31"
}

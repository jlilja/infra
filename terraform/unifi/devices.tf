resource "unifi_device" "USW_24_G1" {
  name = local.USW_24_G1

  site = unifi_site.default.name
  mac  = "18:e8:29:b0:41:da"

  port_override {
    number = 1
    name   = "UNTAGGED - unifi-cloudkey" # Don't modify until ready
  }

  port_override {
    number = 2
    name   = "UNTAGGED - 8 port switch"

    # port_profile_id = unifi_port_profile.iot.id
  }

  port_override {
    number = 3
    name   = "IOT - hue"

    # port_profile_id = unifi_port_profile.trusted.id
  }

  port_override {
    number = 23
    name   = "UPLINK - router"
  }

  port_override {
    number = 15
    name   = unifi_port_profile.iot.name

    port_profile_id = unifi_port_profile.iot.id
  }

  port_override {
    number = 17
    name   = unifi_port_profile.dns.name

    port_profile_id = unifi_port_profile.dns.id
  }

  port_override {
    number = 19
    name   = unifi_port_profile.trusted.name

    port_profile_id = unifi_port_profile.trusted.id
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

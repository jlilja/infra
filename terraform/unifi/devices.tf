locals {
  USW_24_G1   = "switch - USW-24-G1"
  US_8_60W    = "switch - US-8-60W"
  UAP_AC_Lite = "ap - UAP-AC-Lite"
}

resource "unifi_device" "USW_24_G1" {
  name = local.USW_24_G1

  site = unifi_site.default.name
  mac  = "18:e8:29:b0:41:da"

  port_override {
    number = 1
    name   = "router"
    # port_profile_id = unifi_port_profile.trusted.id
  }

  port_override {
    number = 2
    name   = "NAS"
    # port_profile_id = unifi_port_profile.homelab.id
  }

  port_override {
    number = 2
    name   = "NAS"
    # port_profile_id = unifi_port_profile.homelab.id
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

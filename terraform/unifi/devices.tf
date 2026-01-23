resource "unifi_device" "USW_24_G1" {
  name = local.USW_24_G1

  mac = "18:e8:29:b0:41:da"

  port_override {
    number = 1
    name   = "router"
  }

  port_override {
    number          = 5
    name            = module.ds418p-data.network_name
    port_profile_id = module.ds418p-data.network_port_profile_id
  }

  port_override {
    number          = 7
    name            = module.ds418p-mgmt.network_name
    port_profile_id = module.ds418p-mgmt.network_port_profile_id
  }

  port_override {
    number          = 9
    name            = module.trusted.network_name
    port_profile_id = module.trusted.network_port_profile_id
  }
}

resource "unifi_device" "US_8_60W" {
  name = local.US_8_60W

  mac = "b4:fb:e4:8d:13:c9"
}

resource "unifi_device" "UAP_AC_Lite" {
  name = local.UAP_AC_Lite

  mac = "fc:ec:da:a6:14:31"
}

# resource "unifi_device" "UCK_G2_Plus" {
#   name = local.UCK_G2_Plus

#   mac = "18:e8:29:b2:d1:e9"
# }

# import {
#   id = "18:e8:29:b2:d1:e9"
#   to = unifi_device.UCK_G2_Plus
# }

# resource "unifi_device" "USG_Pro_4" {
#   name = local.USG_Pro_4

#   mac = "74:83:c2:74:3b:3b"
# }

resource "unifi_site" "default" {
  description = "test"
}

import {
  id = "default"
  to = unifi_site.default
}

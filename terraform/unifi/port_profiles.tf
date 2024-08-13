# resource "unifi_port_profile" "trusted1" {
#   name                  = "trusted"
#   native_networkconf_id = unifi_network.trusted.id

#   autoneg  = true
#   forward  = "all"
#   poe_mode = "auto"
# }

# resource "unifi_port_profile" "homelab1" {
#   name                  = "homelab"
#   native_networkconf_id = unifi_network.homelab.id

#   #   autoneg  = true
#   #   forward  = "native"
#   #   poe_mode = "off"
# }

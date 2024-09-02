resource "edge_firewall_address_group" "address_group" {
  name        = "${lower(var.name)}_address_group"
  description = "Address group for ${var.name} VLAN"

  cidrs = var.cidrs
}

# locals {
#   test = (var.enable_dns_access == "true" ? [1] : [])
# }

# resource "edge_firewall_ruleset" "ruleset" {
#   name            = "${lower(var.name)}_firewall_ruleset"
#   description     = "ruleset for bla bla"
#   default_action  = "drop"
#   default_logging = true

#   dynamic "rule" {
#     for_each = local.test

#     content {
#       priority = rule.value
#       # description = "ssh"
#       action = "drop"
#       # protocol    = "tcp"
#       # log         = true

#       # destination = {
#       #   address = "192.168.2.1/24"
#       #   port = {
#       #     from = 80
#       #     to   = 80
#       #   }
#       # }
#     }
#   }

# }

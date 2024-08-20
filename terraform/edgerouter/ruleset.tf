resource "edge_firewall_ruleset" "test" {
  name            = "example"
  description     = "drop all traffic on its way to 192.168.2.1/24 over port 80"
  default_action  = "drop"
  default_logging = true

  rule {
    priority    = 10
    description = "ssh"
    action      = "drop"
    protocol    = "tcp"
    log         = true

    destination = {
      address = local.dns.ip_range
      port = {
        from = 80
        to   = 80
      }
    }
  }
}

## TODO: This is not working due to https://github.com/frankgreco/terraform-provider-edge/issues/12 where targetting vlans is not supported.
## Clickops is needed for these change in the meantime.
# resource "edge_firewall_ruleset_attachment" "fw_out_vlan_30" {
#   interface = "eth1.30"
#   in        = edge_firewall_ruleset.test.name
# }

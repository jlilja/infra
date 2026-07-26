resource "unifi_firewall_rule" "drop_all_trusted" {
  name    = "Drop Network 192.168.10.10/26 Traffic"
  action  = "drop"
  ruleset = "LAN_IN"

  rule_index = 2011

  protocol = "tcp"

  #   dst_address = var.ip_address

  enabled = false
}

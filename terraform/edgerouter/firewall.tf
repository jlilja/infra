module "allow" {
  source = "./modules/firewall/allow_dns"

  name = "test"

  cidrs = [
    local.dns.ip_range
  ]

  enable_dns_access = "true"
}

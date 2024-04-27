resource "pihole_dns_record" "record" {
  domain = "pihole.local"
  ip     = local.pihole_ip
}

resource "pihole_ad_blocker_status" "status" {
  enabled = true
}

resource "pihole_dns_record" "record" {
  domain = "pihole.local"
  ip     = local.pihole_ip
}

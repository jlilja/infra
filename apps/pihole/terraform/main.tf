locals {
  jameson_tls_terminated_services = [
    # "cloudkey.liljalab.com",
    "dns.liljalab.com",
    "immich.liljalab.com",
    "jameson.liljalab.com",
    "plex.liljalab.com",
    # "router.liljalab.com",
     "truenas.liljalab.com",
  ]
}

resource "pihole_local_dns" "local_domains" {
  for_each = toset(local.jameson_tls_terminated_services)

  hostname = each.value
  ip       = "192.168.86.20"
}

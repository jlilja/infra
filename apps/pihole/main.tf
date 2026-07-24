resource "pihole_local_dns" "dns" {
  hostname = "dns.liljalab.com"
  ip       = "192.168.32.31"
}

resource "pihole_local_dns" "router" {
  hostname = "router.liljalab.com"
  ip       = "192.168.10.1"
}
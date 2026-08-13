## Machines ##

resource "pihole_local_dns" "jameson" {
  hostname = "jameson.liljalab.com"
  ip       = "192.168.10.11"
}

## Services ##

resource "pihole_local_dns" "immich" {
  hostname = "immich.liljalab.com"
  ip       = "192.168.10.1"
}

resource "pihole_local_dns" "truenas" {
  hostname = "truenas.liljalab.com"
  ip       = "192.168.10.11"
}

## Infrastructure ##

resource "pihole_local_dns" "dns" {
  hostname = "dns.liljalab.com"
  ip       = "192.168.10.11"
}

resource "pihole_local_dns" "router" {
  hostname = "router.liljalab.com"
  ip       = "192.168.10.1"
}

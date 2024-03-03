provider "pihole" {
  url      = local.pihole_ip
  password = var.password
}

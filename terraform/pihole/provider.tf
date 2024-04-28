provider "pihole" {
  url      = "http://${local.pihole_ip}"
  password = var.password
}

module "fedora-thinkpad" {
  source = "../modules/grafana-dashboard"

  title       = "Fedora Thinkpad"
  device_name = "node"
}

module "jameson" {
  source = "../modules/grafana-dashboard"

  title       = "Jameson (ELK)"
  device_name = "jameson"
}

module "margarita" {
  source = "../modules/grafana-dashboard"

  title       = "Margarita (Pihole)"
  device_name = "margarita"
}

module "truenas" {
  source = "../modules/grafana-dashboard"

  title       = "truenas (Hexos)"
  device_name = "truenas"
}

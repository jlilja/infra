module "fedora-thinkpad" {
  source = "../modules/grafana-dashboard"

  title       = "Fedora Thinkpad"
  device_name = "node"
}

module "jameson" {
  source = "../modules/grafana-dashboard"

  title       = "Jameson (elk)"
  device_name = "jameson"
}

module "margarita" {
  source = "../modules/grafana-dashboard"

  title       = "Margarita (pihole)"
  device_name = "margarita"
}

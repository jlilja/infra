module "wifi" {
  source = "./modules/wlan"

  ssid       = "tesseract"
  password   = var.unifi_wlan_password
  network_id = unifi_network.trusted.id
}

module "wifi-iot" {
  source = "./modules/wlan"

  ssid       = "tesseract-iot"
  password   = var.unifi_wlan_iot_password
  network_id = unifi_network.iot.id
  guest      = true
}

module "wifi" {
  source = "./modules/wlan"

  ssid       = "tesseract"
  password   = var.unifi_wlan_password
  network_id = unifi_network.trusted.id
}

module "wifi-guest" {
  source = "./modules/wlan"

  ssid       = "tesseract-guest"
  password   = var.unifi_wlan_guest_password
  network_id = unifi_network.trusted.id
  guest      = true
}

module "wifi-iot" {
  source = "./modules/wlan"

  ssid       = "tesseract-iot"
  password   = var.unifi_wlan_iot_password
  network_id = unifi_network.iot.id
}

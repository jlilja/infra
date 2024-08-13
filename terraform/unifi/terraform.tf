provider "unifi" {
  username       = var.unifi_username # var.unifi_username
  password       = var.unifi_password # var.unifi_password
  api_url        = local.api_url
  allow_insecure = local.insecure
}

resource "unifi_site" "default" {
  description = "Default"
}

resource "unifi_setting_mgmt" "default" {
  site         = unifi_site.default.name
  auto_upgrade = true
}

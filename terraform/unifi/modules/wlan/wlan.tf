data "unifi_ap_group" "default" {}

data "unifi_user_group" "default" {}

resource "unifi_wlan" "wifi" {
  name       = var.ssid
  passphrase = var.password
  security   = "wpapsk"

  wpa3_support    = true
  wpa3_transition = true
  pmf_mode        = "optional"
  is_guest        = var.guest

  network_id    = var.network_id
  ap_group_ids  = [data.unifi_ap_group.default.id]
  user_group_id = data.unifi_user_group.default.id
}

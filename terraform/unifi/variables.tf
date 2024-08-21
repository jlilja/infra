variable "unifi_username" {
  type      = string
  sensitive = true
}

variable "unifi_password" {
  type      = string
  sensitive = true
}


## WLANs ##
variable "unifi_wlan_password" {
  type      = string
  sensitive = true
}

variable "unifi_wlan_iot_password" {
  type      = string
  sensitive = true
}

variable "unifi_wlan_guest_password" {
  type      = string
  sensitive = true
}

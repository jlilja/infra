variable "ssid" {
  type = string
}

variable "password" {
  type      = string
  sensitive = true
}

variable "network_id" {
  type = string
}

variable "guest" {
  type    = bool
  default = false
}

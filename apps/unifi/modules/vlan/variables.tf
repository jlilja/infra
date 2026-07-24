variable "vlan_name" {
  type = string
}

variable "vlan_id" {
  type = number
}

variable "site" {
  type = string
}

variable "subnet" {
  type = string
}

variable "dhcp_start" {
  type = string
}

variable "dhcp_stop" {
  type = string
}

variable "create_firewall_group" {
  type    = bool
  default = true
}

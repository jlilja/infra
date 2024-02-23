terraform {
  required_providers {
    pihole = {
      source  = "ryanwholey/pihole"
      version = "0.2.0"
    }
  }
}

locals {
  pihole_ip = "http://192.168.1.124"
}

variable "password" {}

provider "pihole" {
  url      = local.pihole_ip
  password = var.password
}

resource "pihole_ad_blocker_status" "status" {
  enabled = true
}

resource "pihole_dns_record" "record" {
  domain = "pihole.local"
  ip     = local.pihole_ip
}

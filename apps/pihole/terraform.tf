terraform {
  required_providers {
    pihole = {
      source = "registry.terraform.io/dklesev/pihole"
      version = "1.0.7"
    }
  }
}

provider "pihole" {
  url      = "https://dns.liljalab.com"
  password = var.pihole_password
}
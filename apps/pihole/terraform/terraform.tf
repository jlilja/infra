terraform {
  required_providers {
    pihole = {
      source = "registry.terraform.io/dklesev/pihole"
      version = "1.0.9"
    }
  }
}

provider "pihole" {
  url      = "https://dns.liljalab.com"
  password = var.pihole_password
}
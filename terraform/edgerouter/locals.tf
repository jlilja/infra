locals {
  host     = "https://192.168.1.1"
  insecure = true
}

locals {
  trusted = {
    name     = "trusted"
    ip_range = "192.168.10.0/24"
  }

  homelab = {
    name     = "homelab"
    ip_range = "192.168.20.0/24"
  }

  dns = {
    name     = "dns"
    ip_range = "192.168.30.0/24"
  }

  infrastructure = {
    name     = "infrastructure"
    ip_range = "192.168.40.0/24"
  }

  nas = {
    name     = "nas"
    ip_range = "192.168.50.0/24"
  }

  iot = {
    name     = "iot"
    ip_range = "192.168.60.0/24"
  }
}

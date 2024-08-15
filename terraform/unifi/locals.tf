# Connection details
locals {
  api_url  = "https://192.168.20.11:8443"
  insecure = true
}

# Devices
locals {
  USW_24_G1   = "switch - USW-24-G1"
  US_8_60W    = "switch - US-8-60W"
  UAP_AC_Lite = "ap - UAP-AC-Lite"
}

# Networks
locals {
  TRUSTED = "trusted"
  HOMELAB = "homelab"
  DNS     = "dns"
  INFRA   = "infra"
  NAS     = "nas"
  IOT     = "iot"
}

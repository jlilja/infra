# Connection details
locals {
  api_url  = "https://192.168.1.13"
  insecure = true
}

# Networks
locals {
  TRUSTED      = "trusted"
  HOMELAB      = "homelab"
  DNS          = "dns"
  INFRA        = "infra"
  NAS          = "nas"
  DS418P-data  = "ds418p-data"
  DS418P-mgmt  = "ds418p-mgmt"
  TRUENAS-data = "truenas-data"
  TRUENAS-mgmt = "truenas-mgmt"
  IOT          = "iot"
}

# Infra devices
locals {
  USW_24_G1   = "switch - USW 24 G1"
  US_8_60W    = "switch - US 8 60W"
  UAP_AC_Lite = "ap - UAP AC Lite"
  UCK_G2_Plus = "ck - UCK G2 Plus"
  USG_Pro_4   = "router -	USG-Pro-4"
}

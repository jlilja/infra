/*
* Trusted VLAN (10)
*   192.168.10.0/26
*   64 usable IPs
*
* DHCP
*   52 usable IPs
*
* Static IPs
*   START 192.168.10.1
*   STOP  192.168.10.10
*/
module "trusted" {
  source = "./modules/vlan"

  site      = unifi_site.default.name
  vlan_name = local.TRUSTED
  vlan_id   = 10

  subnet     = "192.168.10.0/26"
  dhcp_start = "192.168.10.10"
  dhcp_stop  = "192.168.10.62"
}

/*
* DNS VLAN (30)
*   192.168.30.0/28
*   16 usable IPs
*
* DHCP
*   16 usable IPs
*
* Static IPs
*   START 192.168.30.1
*   STOP  192.168.30.5
*/
module "dns" {
  source = "./modules/vlan"

  site      = unifi_site.default.name
  vlan_name = local.DNS
  vlan_id   = 30

  subnet     = "192.168.30.0/28"
  dhcp_start = "192.168.30.5"
  dhcp_stop  = "192.168.30.14"
}

module "infra" {
  source = "./modules/vlan"

  site      = unifi_site.default.name
  vlan_name = local.INFRA
  vlan_id   = 40

  subnet     = "192.168.40.0/26" # 64 usable IPs
  dhcp_start = "192.168.40.20"
  dhcp_stop  = "192.168.40.62"
}

module "ds418p-data" {
  source = "./modules/vlan"

  site      = unifi_site.default.name
  vlan_name = local.DS418P-data
  vlan_id   = 51

  subnet     = "192.168.51.0/28" # 16 usable IPs
  dhcp_start = "192.168.51.5"
  dhcp_stop  = "192.168.51.14"
}

module "ds418p-mgmt" {
  source = "./modules/vlan"

  site      = unifi_site.default.name
  vlan_name = local.DS418P-mgmt
  vlan_id   = 52

  subnet     = "192.168.52.0/28" # 16 usable IPs
  dhcp_start = "192.168.52.5"
  dhcp_stop  = "192.168.52.14"
}

module "truenas-data" {
  source = "./modules/vlan"

  site      = unifi_site.default.name
  vlan_name = local.TRUENAS-data
  vlan_id   = 53

  subnet     = "192.168.53.0/28" # 16 usable IPs
  dhcp_start = "192.168.53.5"
  dhcp_stop  = "192.168.53.14"
}

module "truenas-mgmt" {
  source = "./modules/vlan"

  site      = unifi_site.default.name
  vlan_name = local.TRUENAS-mgmt
  vlan_id   = 54

  subnet     = "192.168.54.0/28" # 16 usable IPs
  dhcp_start = "192.168.54.5"
  dhcp_stop  = "192.168.54.14"
}

module "iot" {
  source = "./modules/vlan"

  site      = unifi_site.default.name
  vlan_name = local.IOT
  vlan_id   = 60

  subnet     = "192.168.60.0/24" # 256 usable IPs
  dhcp_start = "192.168.60.20"
  dhcp_stop  = "192.168.60.254"
}

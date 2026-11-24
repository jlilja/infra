resource "truenas_share_nfs" "this" {
  path     = var.path
  comment  = "Exporting NFS shares for ${var.name} directory"
  enabled  = var.enabled

  networks = [
    local.lan
  ]

  maproot_user  = "root"
  maproot_group = "wheel"
}

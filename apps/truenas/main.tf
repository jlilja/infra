resource "truenas_share_nfs" "example" {
  path     = "/mnt/media/Music"
  comment  = "Example NFS export"
  enabled  = true
  networks = ["10.0.0.0/16"]

  maproot_user  = "root"
  maproot_group = "wheel"
}

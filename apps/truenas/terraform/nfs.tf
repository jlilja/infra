resource "truenas_share_nfs" "music" {
  path     = local.music
  comment  = "Exporting NFS shares for music library"
  enabled  = false
  networks = [
    local.lan
  ]

  maproot_user  = "root"
  maproot_group = "wheel"
}

resource "truenas_share_nfs" "movies" {
  path     = local.movies
  comment  = "Exporting NFS shares for movies library"
  enabled  = false
  networks = [
    local.lan
  ]

  maproot_user  = "root"
  maproot_group = "wheel"
}

resource "truenas_share_nfs" "shows" {
  path     = local.shows
  comment  = "Exporting NFS shares for shows library"
  enabled  = true
  networks = [
    local.lan
  ]

  maproot_user  = "root"
  maproot_group = "wheel"
}

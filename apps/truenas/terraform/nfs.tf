locals {
  lan     = "192.168.86.0/24"
  current = "192.168.86.36/32"
}

locals {
  nfs_shares = {
    shows = {
      name    = "shows",
      path    = "/mnt/media/Shows",
      range   = local.current
      enabled = true
    }
    movies = {
      name    = "movies",
      path    = "/mnt/media/Movies",
      range   = local.current
      enabled = true
    }
    music = {
      name    = "music",
      path    = "/mnt/media/Music",
      range   = local.current
      enabled = false
    }
  }
}

module "nfs_shares" {
  source = "./modules/nfs-share"

  for_each = local.nfs_shares

  name    = each.value.name
  path    = each.value.path
  range   = each.value.range
  enabled = each.value.enabled
}

# Shares
locals {
  music  = "/mnt/media/Music"
  movies = "/mnt/media/Movies"
  shows  = "/mnt/media/Shows"
}

# Locations
locals {
  lan = "192.168.86.0/24"
}

resource "truenas_share_nfs" "music" {
  path    = local.music
  comment = "Exporting NFS shares for music library"
  enabled = false
  networks = [
    local.lan
  ]

  maproot_user  = "root"
  maproot_group = "wheel"
}

resource "truenas_share_nfs" "movies" {
  path    = local.movies
  comment = "Exporting NFS shares for movies library"
  enabled = false
  networks = [
    local.lan
  ]

  maproot_user  = "root"
  maproot_group = "wheel"
}

resource "truenas_share_nfs" "shows" {
  path    = local.shows
  comment = "Exporting NFS shares for shows library"
  enabled = true
  networks = [
    local.lan
  ]

  maproot_user  = "root"
  maproot_group = "wheel"
}

module "nfs_shows" {
  source = "./modules/nfs-share"

  name = "shows"
  path = "/mnt/media/Shows"
  enabled = true
}

module "nfs_movies" {
  source = "./modules/nfs-share"

  name = "movies"
  path = "/mnt/media/Movies"
  enabled = false
}

module "nfs_music" {
  source = "./modules/nfs-share"

  name = "music"
  path = "/mnt/media/Music"
  enabled = false
}

import {
  id = "10"
  to = module.nfs_shows.truenas_share_nfs.this
}

import {
  id = "8"
  to = module.nfs_movies.truenas_share_nfs.this
}

import {
  id = "9"
  to = module.nfs_music.truenas_share_nfs.this
}
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

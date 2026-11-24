# Shares
locals {
  media_types = [
    "music",
    "movies",
    "shows"
  ]

  media_paths = [
    "/mnt/media/Music",
    "/mnt/media/Movies",
    "/mnt/media/Shows"
  ]
}

# Locations
locals {
  lan = "192.168.86.0/24"
}

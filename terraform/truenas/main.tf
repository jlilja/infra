terraform {
  required_providers {
    truenas = {
      source  = "PjSalty/truenas"
      version = "~> 2.0"
    }
  }
}

provider "truenas" {
  url                  = "https://192.168.53.5"
  api_key              = "5-AraRT8GNMdkmok9DkqigW1FvQ6htn8rqqEq0D7SQwDrMKTOpHS4tUwq6rPYD0JIw"
  insecure_skip_verify = true
}

resource "truenas_share_nfs" "example" {
  path     = "/mnt/media/Music"
  comment  = "Example NFS export"
  enabled  = true
  networks = ["10.0.0.0/16"]

  maproot_user  = "root"
  maproot_group = "wheel"
}

terraform {
  required_providers {
    edge = {
      source  = "frankgreco/edge"
      version = "0.6.0"
    }
  }
}

provider "edge" {
  username = var.edgerouter_user
  password = var.edgerouter_password
  host     = local.host
  insecure = local.insecure
}

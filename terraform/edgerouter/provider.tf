provider "edge" {
  username = var.edgerouter_user
  password = var.edgerouter_password
  host     = local.host
  insecure = local.insecure
}

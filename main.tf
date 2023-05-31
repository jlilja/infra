terraform {
  backend "s3" {
    bucket = "jlilja-terraform-state-files"
    key    = "infra"
    region = "eu-north-1"
  }
}

locals {
  domain_name = "lilja.io"
}

module "cloudflare_setup" {
  source                  = "./modules/cloudflare"
  domain_name             = local.domain_name
  cloudflare_api_token    = var.cloudflare_api_token
  protonmail_verification = var.protonmail_verification
  protonmail_dkim1        = var.protonmail_dkim1
  protonmail_dkim2        = var.protonmail_dkim2
  protonmail_dkim3        = var.protonmail_dkim3
}

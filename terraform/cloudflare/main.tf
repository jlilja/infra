module "cloudflare_setup" {
  source                  = "./modules/cloudflare"
  domain_name             = local.domain_name
  protonmail_verification = var.protonmail_verification
  protonmail_dkim1        = var.protonmail_dkim1
  protonmail_dkim2        = var.protonmail_dkim2
  protonmail_dkim3        = var.protonmail_dkim3
}

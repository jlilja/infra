module "cloudflare_setup" {
  source = "./modules/cloudflare"

  domain_name = local.domain_name

  mx_records = [
    "mail.protonmail.ch",
    "mailsec.protonmail.ch"
  ]

  dkim_records = [
    { name : "protonmail._domainkey", value : var.protonmail_dkim1 },
    { name : "protonmail2._domainkey", value : var.protonmail_dkim2 },
    { name : "protonmail3._domainkey", value : var.protonmail_dkim3 }
  ]

  protonmail_verification = var.protonmail_verification
}

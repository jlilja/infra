module "cloudflare_setup" {
  source = "./modules/cloudflare"

  domain_name = local.domain_name

  mx_records = [
    "mail.protonmail.ch",
    "mailsec.protonmail.ch"
  ]

  dkim_records = [
    {
      name : "protonmail._domainkey",
      value : "protonmail.domainkey.dqnuquyqjndrlhl3kd676hycw5l4a2hanxco7ab7n56elpexeanaa.domains.proton.ch."
    },
    {
      name : "protonmail2._domainkey",
      value : "protonmail2.domainkey.dqnuquyqjndrlhl3kd676hycw5l4a2hanxco7ab7n56elpexeanaa.domains.proton.ch."
    },
    {
      name : "protonmail3._domainkey",
      value : "protonmail3.domainkey.dqnuquyqjndrlhl3kd676hycw5l4a2hanxco7ab7n56elpexeanaa.domains.proton.ch."
    }
  ]

  protonmail_verification = var.protonmail_verification
}

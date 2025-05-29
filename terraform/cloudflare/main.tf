data "cloudflare_zone" "lilja_dot_io" {
  name = local.domain_name
}

module "cloudflare_lilja_io_setup" {
  source = "../modules/cloudflare"

  zone_id   = data.cloudflare_zone.lilja_dot_io.id
  zone_name = data.cloudflare_zone.lilja_dot_io.name

  # domain_name = local.domain_name

  mx_records = [
    "mail.protonmail.ch",
    "mailsec.protonmail.ch"
  ]

  txt_records = [
    "protonmail-verification=9a69211edf7217e6d5f99e5507b53feb1b356f0d"
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

  # protonmail_verification = "9a69211edf7217e6d5f99e5507b53feb1b356f0d"
}

moved {
  from = module.cloudflare_lilja_io_setup.cloudflare_record.mx_proton_protomain_verification
  to   = module.cloudflare_lilja_io_setup.cloudflare_record.txt_records["protonmail-verification=9a69211edf7217e6d5f99e5507b53feb1b356f0d"]
}

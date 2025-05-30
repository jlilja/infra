locals {
  domain_name = "lilja.io"

  zone_id   = data.cloudflare_zone.lilja_dot_io.id
  zone_name = data.cloudflare_zone.lilja_dot_io.name
}

data "cloudflare_zone" "lilja_dot_io" {
  name = local.domain_name
}

module "cloudflare_lilja_io_setup" {
  source = "../modules/cloudflare"

  zone_id   = local.zone_id
  zone_name = local.domain_name

  mx_records = [
    "mail.protonmail.ch",
    "mailsec.protonmail.ch",
  ]

  txt_records = [
    {
      key   = "${local.zone_name}",
      value = "protonmail-verification=9a69211edf7217e6d5f99e5507b53feb1b356f0d"
    },
    {
      key   = "${local.zone_name}",
      value = "v=spf1 include:_spf.protonmail.ch mx ~all"
    },
    {
      key   = "_dmarc",
      value = "v=DMARC1; p=quarantine"
    },
  ]

  cname_records = [
    {
      key   = "protonmail._domainkey",
      value = "protonmail.domainkey.dqnuquyqjndrlhl3kd676hycw5l4a2hanxco7ab7n56elpexeanaa.domains.proton.ch."
    },
    {
      key   = "protonmail2._domainkey",
      value = "protonmail2.domainkey.dqnuquyqjndrlhl3kd676hycw5l4a2hanxco7ab7n56elpexeanaa.domains.proton.ch."
    },
    {
      key   = "protonmail3._domainkey",
      value = "protonmail3.domainkey.dqnuquyqjndrlhl3kd676hycw5l4a2hanxco7ab7n56elpexeanaa.domains.proton.ch."
    },
  ]
}

# moved {
#   from = module.cloudflare_lilja_io_setup.cloudflare_record.mx_proton_protomain_verification
#   to   = module.cloudflare_lilja_io_setup.cloudflare_record.txt_record["lilja.io-protonmail-verification=9a69211edf7217e6d5f99e5507b53feb1b356f0d"]
# }

# moved {
#   from = module.cloudflare_lilja_io_setup.cloudflare_record.mx_proton_spf1
#   to   = module.cloudflare_lilja_io_setup.cloudflare_record.txt_record["lilja.io-v=spf1 include:_spf.protonmail.ch mx ~all"]
# }

# moved {
#   from = module.cloudflare_lilja_io_setup.cloudflare_record.txt_dmarc
#   to   = module.cloudflare_lilja_io_setup.cloudflare_record.txt_record["_dmarc-v=DMARC1; p=quarantine"]
# }

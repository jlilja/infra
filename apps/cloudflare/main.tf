locals {
  account_id = "4c1889b8eaebef69bc66a471d91bc6ed" # https://github.com/cloudflare/wrangler-legacy/issues/209#issuecomment-541654484

  domain_name = "lilja.io"
  zone_id     = "801ec7bc35b2abc9580d847c7b5c6f56" # https://github.com/cloudflare/wrangler-legacy/issues/209#issuecomment-541654484

  one_day_ttl = 86400 # 1 day
}

module "cloudflare_lilja_io_setup" {
  source = "../modules/cloudflare"

  zone_name = local.domain_name
  zone_id   = local.zone_id

  mx_records = [
    "mail.protonmail.ch",
    "mailsec.protonmail.ch",
  ]

  txt_records = [
    {
      name  = "${local.domain_name}",
      value = "protonmail-verification=9a69211edf7217e6d5f99e5507b53feb1b356f0d"
    },
    {
      name  = "${local.domain_name}",
      value = "v=spf1 include:_spf.protonmail.ch mx ~all"
    },
    {
      name  = "_dmarc",
      value = "v=DMARC1; p=quarantine"
    },
  ]

  cname_records = [
    {
      name  = "protonmail._domainkey",
      value = "protonmail.domainkey.dqnuquyqjndrlhl3kd676hycw5l4a2hanxco7ab7n56elpexeanaa.domains.proton.ch."
    },
    {
      name  = "protonmail2._domainkey",
      value = "protonmail2.domainkey.dqnuquyqjndrlhl3kd676hycw5l4a2hanxco7ab7n56elpexeanaa.domains.proton.ch."
    },
    {
      name  = "protonmail3._domainkey",
      value = "protonmail3.domainkey.dqnuquyqjndrlhl3kd676hycw5l4a2hanxco7ab7n56elpexeanaa.domains.proton.ch."
    },
  ]
}

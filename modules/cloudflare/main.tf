data "cloudflare_zone" "lilja_dot_io" {
  name       = var.domain_name
  account_id = var.cloudflare_account_id
}

resource "cloudflare_record" "mx_proton_mail" {
  name     = data.cloudflare_zone.lilja_dot_io.name
  zone_id  = data.cloudflare_zone.lilja_dot_io.id
  value    = "mail.protonmail.ch"
  proxied  = false
  type     = "MX"
  ttl      = 1
  priority = 10
  comment  = "First MX record for ${data.cloudflare_zone.lilja_dot_io.name} zone."
}

resource "cloudflare_record" "mx_proton_mailsec" {
  name     = data.cloudflare_zone.lilja_dot_io.name
  zone_id  = data.cloudflare_zone.lilja_dot_io.id
  value    = "mailsec.protonmail.ch"
  proxied  = false
  type     = "MX"
  ttl      = 1
  priority = 20
  comment  = "Second MX record for ${data.cloudflare_zone.lilja_dot_io.name} zone."
}

resource "cloudflare_record" "mx_proton_spf1" {
  zone_id = data.cloudflare_zone.lilja_dot_io.id
  type    = "TXT"
  name    = data.cloudflare_zone.lilja_dot_io.name
  value   = "v=spf1 include:_spf.protonmail.ch mx ~all"
  proxied = false
}

resource "cloudflare_record" "mx_proton_protomain_verification" {
  zone_id = data.cloudflare_zone.lilja_dot_io.id
  type    = "TXT"
  name    = data.cloudflare_zone.lilja_dot_io.name
  value   = "protonmail-verification=${var.protonmail_verification}"
  proxied = false
}

resource "cloudflare_record" "cname_dkim1" {
  zone_id = data.cloudflare_zone.lilja_dot_io.id
  type    = "CNAME"
  name    = "protonmail._domainkey"
  value   = var.protonmail_dkim1
  proxied = false
}

resource "cloudflare_record" "cname_dkim2" {
  zone_id = data.cloudflare_zone.lilja_dot_io.id
  type    = "CNAME"
  name    = "protonmail2._domainkey"
  value   = var.protonmail_dkim2
  proxied = false
}

resource "cloudflare_record" "cname_dkim3" {
  zone_id = data.cloudflare_zone.lilja_dot_io.id
  type    = "CNAME"
  name    = "protonmail3._domainkey"
  value   = var.protonmail_dkim3
  proxied = false
}

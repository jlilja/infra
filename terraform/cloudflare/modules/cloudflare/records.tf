resource "cloudflare_record" "mx_proton_mail" {
  for_each = toset(var.mx_records)

  name    = data.cloudflare_zone.lilja_dot_io.name
  zone_id = data.cloudflare_zone.lilja_dot_io.id

  content    = each.value
  proxied  = false
  type     = "MX"
  ttl      = 1
  priority = index(var.mx_records, each.value) + 1

  comment = "MX records for ${data.cloudflare_zone.lilja_dot_io.name} zone."
}

resource "cloudflare_record" "cname_dkim1" {
  for_each = map(var.dkim_records)

  zone_id = data.cloudflare_zone.lilja_dot_io.id
  type    = "CNAME"
  name    = each.name
  content   = each.value
  proxied = false
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
  content = "protonmail-verification=${var.protonmail_verification}"
  proxied = false
}

resource "cloudflare_record" "txt_dmarc" {
  zone_id = data.cloudflare_zone.lilja_dot_io.id
  type    = "TXT"
  name    = "_dmarc"
  value   = "v=DMARC1; p=quarantine"
  proxied = false
}

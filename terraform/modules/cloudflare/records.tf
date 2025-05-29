resource "cloudflare_record" "mx_proton_mail" {
  for_each = toset(var.mx_records)

  zone_id = var.zone_id

  name    = "@"
  type    = "MX"
  content = each.value
  proxied = false

  ttl      = 1
  priority = index(var.mx_records, each.value) + 1
  comment  = "MX records for ${var.zone_name} zone."
}

resource "cloudflare_record" "cname_dkim1" {
  for_each = { for record in var.dkim_records : record.name => record }

  zone_id = var.zone_id

  name    = each.value.name
  type    = "CNAME"
  content = each.value.value
  proxied = false
}

# resource "cloudflare_record" "mx_proton_spf1" {
#   zone_id = var.zone_id
#   type    = "TXT"
#   name    = var.zone_name
#   content = "v=spf1 include:_spf.protonmail.ch mx ~all"
#   proxied = false
# }

# resource "cloudflare_record" "mx_proton_protomain_verification" {
#   zone_id = var.zone_id
#   type    = "TXT"
#   name    = data.cloudflare_zone.lilja_dot_io.name
#   content = "protonmail-verification=${var.protonmail_verification}"
#   proxied = false
# }

resource "cloudflare_record" "txt_record" {
  type     = "TXT"
  for_each = { for record in var.txt_records : "${record.name}-${record.value}" => record }

  zone_id = var.zone_id

  name    = each.value.name
  content = each.value.value

  proxied = false
}

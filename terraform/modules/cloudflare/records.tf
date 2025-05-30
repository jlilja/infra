resource "cloudflare_record" "mx_records" {
  for_each = toset(var.mx_records)

  zone_id = var.zone_id
  type    = "MX"

  name    = var.zone_name
  content = each.value

  proxied = false

  ttl      = 1
  priority = index(var.mx_records, each.value) + 1
  comment  = "MX records for ${var.zone_name} zone."
}

resource "cloudflare_record" "cname_records" {
  for_each = { for record in var.cname_records : "${record.key}-${record.value}" => record }

  zone_id = var.zone_id
  type    = "CNAME"

  name    = each.key
  content = each.value

  proxied = false
}

resource "cloudflare_record" "txt_records" {
  for_each = { for record in var.txt_records : "${record.key}-${record.value}" => record }

  zone_id = var.zone_id
  type    = "TXT"

  name    = each.key
  content = each.value

  proxied = false
}

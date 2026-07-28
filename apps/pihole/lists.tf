resource "pihole_list" "hagezi_dns_blocklist_multi_pro" {
  address = "https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/adblock/pro.txt"
  type    = "block"
  enabled = true
  comment = "https://github.com/hagezi/dns-blocklists#ledger-multi-pro---extended-protection-recommended-"
}

resource "pihole_list" "hagezi_dns_blocklist_tif" {
  address = "https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/adblock/tif.txt"
  type    = "block"
  enabled = true
  comment = "https://github.com/hagezi/dns-blocklists#closed_lock_with_key-threat-intelligence-feeds---increases-security-significantly-recommended-"
}

resource "pihole_list" "hagezi_dns_blocklist_multi_pro_maximum_prot" {
  address = "https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/adblock/pro.plus.txt"
  type    = "block"
  enabled = false
  comment = "https://github.com/hagezi/dns-blocklists#orange_book-multi-pro---maximum-protection-"
}
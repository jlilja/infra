locals {
  block_lists = {
    adblock_pro = {
      address = "https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/adblock/pro.txt",
      enabled = true,
      comment = "https://github.com/hagezi/dns-blocklists#ledger-multi-pro---extended-protection-recommended-"
    },
    ablock_tif = {
      address = "https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/adblock/tif.txt",
      enabled = true,
      comment = "https://github.com/hagezi/dns-blocklists#closed_lock_with_key-threat-intelligence-feeds---increases-security-significantly-recommended-"
    },
    adblock_multi_pro = {
      address = "https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/adblock/pro.plus.txt",
      enabled = true,
      comment = "https://github.com/hagezi/dns-blocklists#orange_book-multi-pro---maximum-protection-"
    },
  }
}

resource "pihole_list" "block_list" {
  for_each = local.block_lists

  address = each.value.address
  type    = "block"
  enabled = each.value.enabled
  comment = each.value.comment
}

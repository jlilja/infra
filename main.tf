resource "namecheap_domain_records" "lilja-rocks-ns" {
  domain = "lilja.rocks"
  mode = "OVERWRITE"

  record {
    hostname = "blog"
    type = "A"
    address = "10.11.12.13"
  }
}

resource "namecheap_domain_records" "lilja-io-ns" {
  domain = var.namecheap_domain
  mode = "OVERWRITE"

  nameservers = [
        "amit.ns.cloudflare.com",
    "anna.ns.cloudflare.com"
  ]
}

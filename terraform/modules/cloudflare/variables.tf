# variable "domain_name" {
#   description = "The cloudflare domain to configure."
#   type        = string
# }

variable "zone_id" {
  type = string
}

variable "zone_name" {
  type = string
}

variable "mx_records" {
  type = list(string)
}

variable "txt_records" {
  type = map(string)
}

variable "dkim_records" {
  type = list(object({
    name  = string,
    value = string
  }))
}

# variable "asd_records222" {
#   type = map(string)
# }

# variable "protonmail_verification" {
#   description = "The protonmail txt verification dns record."
#   type        = string
# }

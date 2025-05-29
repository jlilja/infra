variable "domain_name" {
  description = "The cloudflare domain to configure."
  type        = string
}

variable "mx_records" {
  type = list(string)
}

variable "dkim_records" {
  type = list(object({
    name  = string,
    value = string
  }))
}

variable "protonmail_verification" {
  description = "The protonmail txt verification dns record."
  type        = string
}

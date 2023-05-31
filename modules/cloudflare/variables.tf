variable "cloudflare_api_token" {
  type        = string
  description = "(Required) API token for authenticating with the cloudflare api."
}

variable "cloudflare_account_id" {
  type        = string
  description = "Cloudflare account id."
}

variable "domain_name" {
  description = "The cloudflare domain to configure."
  type        = string
}


variable "protonmail_verification" {
  description = "The protonmail txt verification dns record."
  type        = string
}

variable "protonmail_dkim1" {
  description = "The protonmail CNAME dkim1 dns record."
  type        = string
}

variable "protonmail_dkim2" {
  description = "The protonmail CNAME dkim2 dns record."
  type        = string
}

variable "protonmail_dkim3" {
  description = "The protonmail CNAME dkim3 dns record."
  type        = string
}

variable "cloudflare_api_token" {
  type        = string
  description = "(Required) API token for authenticating with the cloudflare api."
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

variable "namecheap_user_name" {
  type        = string
  description = "(Required) A registered user name for Namecheap"
}

variable "namecheap_api_user" {
  type        = string
  description = "(Required) A registered api user for Namecheap"
}

variable "namecheap_api_key" {
  type        = string
  description = "(Required) The Namecheap API key"
}

variable "cloudflare_api_token" {
  type        = string
  description = "(Required) API token for authenticating with the cloudflare api."
}

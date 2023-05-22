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

variable "namecheap_domain" {
  description = "The Namecheap domain to configure"
  type        = string
  default     = "lilja.io"
}

variable "cloudflare_api_token" {
  type        = string
  description = "(Required) API token for authenticating with the cloudflare api."
}

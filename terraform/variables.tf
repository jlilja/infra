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

variable "name" {
  type = string
}

variable "cidrs" {
  type = list(string)
}

variable "enable_dns_access" {
  type    = string
  default = "false"

  validation {
    condition     = contains(["true", "false"], var.enable_dns_access)
    error_message = "Needs to be either string values of true or false"
  }
}

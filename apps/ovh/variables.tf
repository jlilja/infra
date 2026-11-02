variable "application_key" {
  type        = string
  sensitive   = true
  description = "Application key"
}

variable "application_secret" {
  type        = string
  sensitive   = true
  description = "Application secret"
}

variable "consumer_key" {
  type        = string
  sensitive   = true
  description = "Consumer key"
}

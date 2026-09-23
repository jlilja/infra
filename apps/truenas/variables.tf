variable "api_key" {
  type = string
  sensitive = true
  description = "Truenas api key"
}

variable "truenas_username" {
  sensitive = true
  type = string
}
variable "zone_id" {
  type = string
}

variable "zone_name" {
  type = string
}

variable "record_ttl" {
  type    = number
  default = 86400 # 1 day
}

variable "mx_records" {
  type = list(string)
}

variable "txt_records" {
  type = list(object({
    name  = string,
    value = string,
  }))
}

variable "cname_records" {
  type = list(object({
    name  = string,
    value = string,
  }))
}

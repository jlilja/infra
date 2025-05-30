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
  type = list(object({
    key   = string,
    value = string,
  }))
}

variable "cname_records" {
  type = list(object({
    key   = string,
    value = string,
  }))
}

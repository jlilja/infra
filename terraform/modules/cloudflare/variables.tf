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
  type = map(string)
}

variable "cname_records" {
  type = map(string)
}

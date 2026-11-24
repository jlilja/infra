variable "name" {
  type = string

  validation {
    condition     = contains(local.media_types, var.name)
    error_message = "Needs a valid type"
  }
}

variable "path" {
  type = string

  validation {
    condition     = contains(local.media_paths, var.path)
    error_message = "Needs a valid path"
  }
}

variable "enabled" {
  type = bool

  default = false
}

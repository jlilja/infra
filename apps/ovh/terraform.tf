terraform {
  required_providers {
    ovh = {
      source = "ovh/ovh"
    }
  }
}

provider "ovh" {
  endpoint      = "ovh-ca"
  application_key    = var.application_key
  application_secret = var.application_secret
  consumer_key       = var.consumer_key
}
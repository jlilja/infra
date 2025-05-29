terraform {
  backend "s3" {
    bucket = "jlilja-terraform-state-files"
    key    = "infra"
    region = "eu-north-1"
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

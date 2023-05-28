terraform {
  backend "s3" {
    bucket = "jlilja-terraform-state-files"
    key    = "infra/cloudflare"
    region = "eu-north-1"
  }
}

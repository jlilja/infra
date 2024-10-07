terraform {
  backend "s3" {
    bucket = "jlilja-terraform-state-files"
    key    = "infra"
    region = "eu-north-1"
  }
}

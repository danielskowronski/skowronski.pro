terraform {
  backend "s3" {
    bucket = "scloud-terraform"
    key    = "skowronski-pro/skowronski-pro.tfstate"
    region = "eu-central-1"
  }
}
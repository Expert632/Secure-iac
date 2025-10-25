terraform {
  required_version = ">= 1.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "demo" {
  bucket = "lab-demo-bucket-github-only-12345"
  acl    = "public-read" # 🚨 volontairement dangereux
}

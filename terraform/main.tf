terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "us-east-1"
}

# Dummy Resource (Testing Checkov Security Scan)
resource "aws_s3_bucket" "my_insecure_bucket" {
  bucket = "insecure-example-bucket-1234"

  # ❌ Public Access (Checkov va détecter une vulnérabilité)
  acl    = "public-read"
}

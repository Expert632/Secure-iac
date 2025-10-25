terraform {
  required_version = ">= 1.5.0"
}

# Provider "local" = 100% local, zéro cloud
provider "local" {}

resource "local_file" "example" {
  filename = "${path.module}/hello.txt"
  content  = "Hello GitHub Actions Lab!"
}

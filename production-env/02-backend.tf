terraform {
  backend "s3" {
    bucket = "multi-environment"
    key    = "development/mystatefiles/terraform.tfstate"
    region = "us-east-1"
  }
}


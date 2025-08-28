terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.10.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region                   = "us-east-1"
  shared_credentials_files = ["/Users/ABOLADE/.aws/credentials"]
  profile                  = "Terraform_AWS_User"
}
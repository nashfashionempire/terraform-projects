#configuring aws provider
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.1.0"
    }
  }
}

provider "aws" {
  # Configuration of my aws profile
  profile = "default"
  region = "us-east-1"
}
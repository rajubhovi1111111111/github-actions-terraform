terraform {
  backend "s3" {
    bucket         = "terraformstate3221"
    region         = "ap-south-1"
    key            = "terraform.tfstate/terraform.tfstate"
    encrypt = true

  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}

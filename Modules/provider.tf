terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
    backend "remote" {
    hostname     = "Tharani.io" # Or your custom Scalr host if self-hosted
    organization = "<Tharani>"

    workspaces {
      name = "terraform_project"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region_output
}
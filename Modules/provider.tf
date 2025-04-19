terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "remote" {
    hostname     = "tharani.scalr.io"
    organization = "env-v0opek607gfoqonha"

    workspaces {
      name = "myworkspace"
    }
  }

}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region_out
}
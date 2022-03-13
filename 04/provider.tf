provider "aws" {
  region = var.region
}

terraform {
  required_version = "> 0.11"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 4.3.0"
    }
  }
}
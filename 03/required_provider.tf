terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.13.0"
    }
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.15.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "4.4.0"
    }
  }
}

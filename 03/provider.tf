provider "aws" {
  region  = "ap-southeast-1"
}

provider "github" {
  token = chomp(file("~/.ssh/github_jgyy"))
}

provider "digitalocean" {}
provider "azurerm" {}

resource "github_repository" "example" {
  name       = "terraform-repo"
  visibility = "private"
}

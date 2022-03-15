provider "aws" {
  region = "ap-southeast-1"
}

provider "aws" {
  alias   = "aws02"
  region  = "ap-south-1"
}

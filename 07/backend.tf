terraform {
  backend "s3" {
    bucket         = "terraform-state-jgyy"
    key            = "remotedemo.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "s3-state-lock"
  }
}

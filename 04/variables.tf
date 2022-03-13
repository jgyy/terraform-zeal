data "http" "public_ip" {
  url = "https://icanhazip.com"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

resource "random_integer" "usernumber" {
  min = 1
  max = 9999
}

locals {
  vpn_ip     = "${chomp(data.http.public_ip.body)}/32"
  usernumber = random_integer.usernumber.result
}

variable "instancetype" {
  default = "t2.micro"
}

variable "elb_name" {
  type = string
}

variable "az" {
  type = list(any)
}

variable "timeout" {
  type = number
}

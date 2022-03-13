variable "istest" {}

resource "aws_instance" "dev" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
  count         = var.istest == true ? 3 : 0
}

resource "aws_instance" "prod" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.large"
  count         = var.istest == false ? 1 : 0
}

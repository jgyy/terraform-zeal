data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "myec2" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"

  tags {
    Name = "manual"
  }
}

resource "aws_iam_user" "lb" {
  name = "loadbalancer"
  path = "/system/"
}

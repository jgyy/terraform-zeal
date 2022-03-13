resource "aws_instance" "myec2" {
  ami                    = data.aws_ami.app_ami.id
  instance_type          = var.list[1]
  vpc_security_group_ids = [aws_security_group.allow_ssh_conn.id]
}

variable "list" {
  type    = list(any)
  default = ["m5.large", "t2.micro", "m5.xlarge", "t2.medium"]
}

variable "types" {
  type = map(any)
  default = {
    us-east-1      = "t2.micro"
    us-west-2      = "t2.nano"
    ap-south-1     = "t2.small"
    ap-southeast-1 = "t2.medium"
  }
}

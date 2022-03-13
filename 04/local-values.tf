locals {
  common_tags = {
    Owner   = "DevOps Team"
    service = "backend"
  }
}

resource "aws_instance" "db-dev" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.small"
  tags          = local.common_tags
}

resource "aws_ebs_volume" "db_ebs" {
  availability_zone = var.az[0]
  size              = 8
  tags              = local.common_tags
}

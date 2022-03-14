resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}

module "ec2_cluster" {
  source         = "terraform-aws-modules/ec2-instance/aws"
  version        = "~> 2.0"
  name           = "my-cluster"
  instance_count = 1
  ami            = data.aws_ami.app_ami.id
  instance_type  = "t2.micro"
  subnet_id      = aws_subnet.main.id

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

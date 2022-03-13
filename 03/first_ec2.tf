resource "aws_instance" "myec2" {
  ami           = "ami-02f47fa62c613afb4"
  instance_type = "t2.micro"
}

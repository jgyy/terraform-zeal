resource "aws_instance" "taint_myec2" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
}

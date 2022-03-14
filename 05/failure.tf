resource "aws_security_group" "allow_ssh_fail" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH into VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "myec2_fail" {
  ami                    = data.aws_ami.app_ami.id
  instance_type          = "t2.micro"
  key_name               = "key"
  vpc_security_group_ids = [aws_security_group.allow_ssh_fail.id]

  provisioner "remote-exec" {
    on_failure = continue
    inline = [
      "sudo yum -y install nano"
    ]
  }
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("/tmp/key")
    host        = self.public_ip
  }
}

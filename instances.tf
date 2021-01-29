
resource "aws_instance" "instance-test" {
  ami             = "ami-0a262e3ac12949132"
  instance_type   = "t2.small"
  security_groups = [aws_security_group.sg-clare.name]

  tags = {
    Name = var.tags[terraform.workspace]
  }
}


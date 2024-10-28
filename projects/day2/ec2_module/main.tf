resource "aws_instance" "joyi_terraform" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  # Adding tags to give the instance a name
  tags = {
    Name = var.instance_name
  }
}



resource "aws_instance" "joyi_terraform_backend" {
  ami           = "ami-0ad21ae1d0696ad58"
  instance_type = "t2.micro"
  subnet_id     = "subnet-020d35282be641765"
  key_name      = "UbuntuKey"
}
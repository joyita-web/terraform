output "instance_public_dns" {
  value = aws_instance.joyi_terraform.public_dns
}
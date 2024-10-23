provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "joyi_terraform" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
}

# Define input variables
variable "ami" {
  description = "The AMI ID for the instance"
}

variable "instance_type" {
  description = "The type of instance to create"
}

variable "subnet_id" {
  description = "The subnet ID in which to launch the instance"
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access"
}
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

# Adding a variable for instance name
variable "instance_name" {
  description = "The name to assign to the instance"
}

variable "aws_region" {
  type = string
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
  sensitive = true
}

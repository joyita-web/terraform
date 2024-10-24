#!/bin/bash

# Load properties from the properties file
source ec2_creation.properties

# Check if all required variables are set
if [ -z "$ami" ] || [ -z "$instance_type" ] || [ -z "$subnet_id" ] || [ -z "$key_name" ] || [ -z "$instance_name" ]; then
    echo "Error: Missing required parameters in ec2_creation.properties"
    exit 1
fi

# Navigate to the directory containing your Terraform configuration
#cd /path/to/your/terraform/directory

# Initialize Terraform
terraform init

# Apply the Terraform configuration with variable values
terraform apply -auto-approve -var "ami=$ami" -var "instance_type=$instance_type" -var "subnet_id=$subnet_id" -var "key_name=$key_name" -var "instance_name=$instance_name"
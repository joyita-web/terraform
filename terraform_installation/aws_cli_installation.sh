#!/bin/bash

# Update package list
sudo apt update

# Install unzip
sudo apt install -y unzip

# Download AWS CLI
wget "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"

# Unzip the downloaded file
unzip awscli-exe-linux-x86_64.zip

# Install AWS CLI
sudo ./aws/install

# Check installation
echo "AWS CLI installed successfully!"
echo "You can now run: /usr/local/bin/aws --version"
/usr/local/bin/aws --version
#!/usr/bin/env bash

# Update and install dependencies
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

# Add HashiCorp GPG key
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

# Add the official HashiCorp repo
sudo apt-add-repository "deb https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Update again and install Terraform
sudo apt-get update && sudo apt-get install -y terraform

# Verify installation
terraform -version
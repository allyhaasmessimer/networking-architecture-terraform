# main.tf

# Define the provider
# the provider block is used to configure the AWS provider. It specifies the region where resources will be created.
provider "aws" {
    region = var.region
}

# Module for VPC
# This module will manage the creation and configuration of the VPC.
module "vpc" {
    source = "./modules/vpc"
}

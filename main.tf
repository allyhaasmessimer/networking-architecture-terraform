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

# Module for public_subnets
# This module will manage the creation and configuration of the Subnets.
module "subnets" {
    source = "./modules/subnets"
    vpc_id = module.vpc.vpc_id
}

# Module for internet gateway
# This module will manage the creation and configuration of the internet gateway.
module "internet_gateway" {
    source = "./modules/internet_gateway"
    vpc_id = module.vpc.vpc_id
}

# Module for Route Tables
# This module will manage the creation and configuration of the route tables.
module "route_tables" {
    source = "./modules/route_tables"
    vpc_id = module.vpc.vpc_id
    gateway_id = module.internet_gateway.internet_gateway_id
}

# variables.tf

# Define the AWS region variable
variable "region" {
    description = "The AWS region to deploy resources"
    type        = string
    default     = "us-east-1"
}

# Define the availability zones for the ELB
variable "availability_zones" {
  description = "The availability zones for the ELB"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

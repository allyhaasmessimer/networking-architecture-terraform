variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "route_table_id" {
  description = "Route table ID to associate with the subnets"
  type        = string
}

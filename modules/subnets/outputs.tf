output "public_subnet_ids" {
  description = "The ID of the public subnets"
  value       = aws_subnet.public_subnets[*].id
}

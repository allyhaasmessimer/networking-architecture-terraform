resource "aws_route_table_association" "public_subnet_asso" {
  count = length(var.public_subnet_ids)
  subnet_id      = element(var.public_subnet_ids, count.index)
  route_table_id = var.route_table_id
}

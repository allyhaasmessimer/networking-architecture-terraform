resource "aws_route_table" "second_rt" {
 vpc_id = var.vpc_id

 route {
   cidr_block = "0.0.0.0/0"
   gateway_id = var.gateway_id
 }

 tags = {
   Name = "2nd Route Table"
 }
}

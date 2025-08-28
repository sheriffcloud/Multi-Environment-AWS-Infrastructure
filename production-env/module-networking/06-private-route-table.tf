resource "aws_route_table" "tf_private_route_table" {
  vpc_id = aws_vpc.tf_vpc.id
  count = var.count_subnets

 route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.tf_nat_gateway[count.index].id
  }

   tags = {
    Name = "${var.name}-private-route-table"
    Environment = var.environment
  }
}
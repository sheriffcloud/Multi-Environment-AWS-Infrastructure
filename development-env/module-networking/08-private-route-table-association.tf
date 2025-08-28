resource "aws_route_table_association" "private_route_table_association" {
  subnet_id      = aws_subnet.tf_private_subnet[count.index].id
  route_table_id = aws_route_table.tf_private_route_table[count.index].id
  count          = var.create_subnet ? var.count_subnets : 0
}

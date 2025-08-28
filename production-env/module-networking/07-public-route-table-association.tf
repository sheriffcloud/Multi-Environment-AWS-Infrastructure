resource "aws_route_table_association" "tf_public_route_table_association" {
  subnet_id      = aws_subnet.tf_public_subnet[count.index].id
  route_table_id = aws_route_table.tf_public_route_table.id
  count          = var.create_subnet ? var.count_subnets : 0
}

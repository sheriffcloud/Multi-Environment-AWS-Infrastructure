resource "aws_nat_gateway" "tf_nat_gateway" {
  allocation_id = aws_eip.tf_elastic_ip[count.index].id
  subnet_id     = aws_subnet.tf_public_subnet[count.index].id
  count         = var.create_subnet ? var.count_subnets : 0

  tags = {
    Name        = "${var.name}-nat-gateway${count.index + 1}"
    Environment = var.environment
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.tf_igw]
}

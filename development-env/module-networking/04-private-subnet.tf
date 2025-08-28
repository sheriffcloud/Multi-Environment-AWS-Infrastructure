resource "aws_subnet" "tf_private_subnet" {
  vpc_id                  = aws_vpc.tf_vpc.id
  cidr_block              = "192.168.${count.index + 3}.0/24"
  count                   = var.create_subnet ? var.count_subnets : 0
  availability_zone       = data.aws_availability_zones.available.names[count.index]
 

  tags = {
    Name        = "${var.name}-private-subnet-${count.index + 1}"
    environment = var.environment
  }
}

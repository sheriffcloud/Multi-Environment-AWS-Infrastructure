resource "aws_subnet" "tf_public_subnet" {
  vpc_id                  = aws_vpc.tf_vpc.id
  cidr_block              = "192.168.${count.index + 1}.0/24"
  count                   = var.create_subnet ? var.count_subnets : 0
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name        = "${var.name}-public-subnet-${count.index + 1}"
    environment = var.environment
  }
}

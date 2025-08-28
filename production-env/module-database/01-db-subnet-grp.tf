resource "aws_db_subnet_group" "tf_db_subnet_group" {
  name       = "${var.name}-db-subnet-group"
  subnet_ids = var.private_subnet_ids

  tags = {
    Name = "${var.name}-db-subnet-group"
    Environment = var.environment
  }
}
resource "aws_db_parameter_group" "tf_db_parameter_group" {
  name   = "${var.name}-db-parameter-grp"
  family = "mysql8.0"
description = "Custom parameter group for MySQL 5.6"
  parameter {
    name  = "slow_query_log"
    value = "1"
  }
  parameter {
    name  = "long_query_time"
    value = "2"
  }
tags = {
    Name = "${var.name}-db-parameter-grp"
    Environment = var.environment
  }
}
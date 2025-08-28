output "rds_endpoint" {
    description = "The connection endpoint"
    value = aws_db_instance.tf_db_instance.address
}

output "rds_port" {
    description = "The port the RDS instance is listening on"
    value = aws_db_instance.tf_db_instance.port
  
}
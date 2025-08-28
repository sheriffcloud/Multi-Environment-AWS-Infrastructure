resource "aws_db_instance" "tf_db_instance" {
  identifier             = "${var.name}-db-instance"
  allocated_storage      = var.allocated_storage
  db_name                = var.db_name
  engine                 = var.db_engine
  engine_version         = var.db_engine_version
  instance_class         = var.db_instance_class
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = aws_db_parameter_group.tf_db_parameter_group.name
  db_subnet_group_name   = aws_db_subnet_group.tf_db_subnet_group.name
  skip_final_snapshot    = true
  vpc_security_group_ids = [var.db_security_group_id]

  # Automated Backups
  backup_retention_period = 7             # Keep backups for 7 days
  backup_window           = "03:00-04:00" # UTC time for daily backup

  # Maintenance Window
  maintenance_window = "Mon:04:00-Mon:05:00" # Weekly patching/maintenance

  tags = {
    Name        = "${var.name}-db-instance"
    Environment = var.environment
  }
}

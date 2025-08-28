output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.networking.vpc_id

}

output "public_subnet_ids" {
  description = "The ID of the public subnet"
  value       = module.networking.public_subnet_ids
}

output "private_subnet_ids" {
  description = "The ID of the private subnet"
  value       = module.networking.private_subnet_ids
}

output "alb_security_group_id" {
  description = "The ID of the ALB security group"
  value       = module.networking.alb_security_group_id
}

output "app_security_group_id" {
  description = "The ID of the App security group"
  value       = module.networking.app_security_group_id
}

output "db_security_group_id" {
  description = "The ID of the DB security group"
  value       = module.networking.db_security_group_id
}

output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = module.compute.alb_dns_name

}

output "autoscaling_group_name" {
  description = "The name of the Auto Scaling Group"
  value       = module.compute.autoscaling_group_name

}

output "rds_endpoint" {
  description = "The connection endpoint"
  value       = module.database.rds_endpoint

}

output "rds_port" {
  description = "The port the RDS instance is listening on"
  value       = module.database.rds_port

}

output "scale_out_policy_arn" {
  description = "The ARN of the scale out policy"
  value       = module.compute.scale_out_policy_arn

}

output "scale_in_policy_arn" {
  description = "The ARN of the scale in policy"
  value       = module.compute.scale_in_policy_arn

}

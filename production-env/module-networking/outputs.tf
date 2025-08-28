output "vpc_id" {
    description = "The ID of the VPC"
    value = aws_vpc.tf_vpc.id
    sensitive = true
}

output "public_subnet_ids" {
    description = "The ID of the public subnet"
    value = aws_subnet.tf_public_subnet[*].id

}

output "private_subnet_ids" {
    description = "The ID of the private subnet"
    value = aws_subnet.tf_private_subnet[*].id
}

output "alb_security_group_id" {
    description = "The ID of the ALB security group"
    value = aws_security_group.tf_alb_sg.id
}

output "app_security_group_id" {
    description = "The ID of the App security group"
    value = aws_security_group.tf_app_sg.id
}

output "db_security_group_id" {
    description = "The ID of the DB security group"
    value = aws_security_group.tf_db_sg.id
}
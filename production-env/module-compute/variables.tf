variable "cidr_block" {
    description = "This is the CIDR block for the VPC"
    type = string
    default = "192.168.0.0/16"
  
}

variable "instance_tenancy" {
    description = "This is the instance tenancy for the VPC"
    type = string
    default = "default"
  
}

variable "name" {
    description = "The name of the VPC"
    type = string
    default = "prod"
  
}

variable "environment" {
    description = "The environment for the VPC"
    type = string
    default = "production"
  
}

variable "create_subnet" {
    description = "Whether to create a subnet"
    type = bool
    default = true
  
}

variable "count_subnets" {
    description = "The number of subnets to create"
    type = number
    default = 2
  
}

variable "alb_security_group_id" {
  description = "ALB Security Group ID"
  type = string
}

variable "db_security_group_id" {
  description = "DB Security Group ID"
  type = string
}

variable "app_security_group_id" {
  description = "App Security Group ID"
  type = string
}

variable "public_subnet_ids" {
  description = "List of Public Subnet IDs"
  type = list(string)
}

variable "private_subnet_ids" {
  description = "List of Private Subnet IDs"
  type = list(string)
}

variable "vpc_id" {
  description = "VPC ID"
  type = string
}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  type = string
  default = "ami-020cba7c55df1f615"
  
}

variable "instance_type" {
    description = "The type of instance to use for the EC2 instance"
    type = string
    default = "t2.micro"
  
}

variable "key_name" {
    description = "The name of the key pair to use for the EC2 instance"
    type = string
    default = "terraform-ec2"
  
}

variable "user_data" {
    description = "The user data to use for the EC2 instance"
    type = string
    default = "#!/bin/bash\necho Hello, World! > /var/www/html/index.html\nservice httpd start\nchkconfig httpd on"

}

variable "min_size" {
    description = "The minimum size of the Auto Scaling group"
    type = number
    default = 1
  
}

variable "max_size" {
    description = "The maximum size of the Auto Scaling group"
    type = number
    default = 3
  
}

variable "desired_capacity" {
    description = "The desired capacity of the Auto Scaling group"
    type = number
    default = 1
  
}
variable "cidr_block" {
  description = "This is the CIDR block for the VPC"
  type        = string
  default     = "192.168.0.0/16"

}

variable "instance_tenancy" {
  description = "This is the instance tenancy for the VPC"
  type        = string
  default     = "default"

}

variable "name" {
  description = "The name of the VPC"
  type        = string
  default     = "prod"

}

variable "environment" {
  description = "The environment for the VPC"
  type        = string
  default     = "production"

}

variable "create_subnet" {
  description = "Whether to create a subnet"
  type        = bool
  default     = true

}

variable "count_subnets" {
  description = "The number of subnets to create"
  type        = number
  default     = 2

}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
  default     = "ami-020cba7c55df1f615"

}

variable "instance_type" {
  description = "The type of instance to use for the EC2 instance"
  type        = string
  default     = "t2.micro"

}

variable "key_name" {
  description = "The name of the key pair to use for the EC2 instance"
  type        = string
  default     = "terraform-ec2"

}

variable "user_data" {
  description = "The user data to use for the EC2 instance"
  type        = string
  default     = "#!/bin/bash\necho Hello, World! > /var/www/html/index.html\nservice httpd start\nchkconfig httpd on"

}

variable "min_size" {
  description = "The minimum size of the Auto Scaling group"
  type        = number
  default     = 1

}

variable "max_size" {
  description = "The maximum size of the Auto Scaling group"
  type        = number
  default     = 3

}

variable "desired_capacity" {
  description = "The desired capacity of the Auto Scaling group"
  type        = number
  default     = 1

}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
  default     = 10

}

variable "db_name" {
  description = "The name of the database to create"
  type        = string
  default     = "devdb"

}

variable "db_engine" {
  description = "The database engine to use"
  type        = string
  default     = "mysql"

}

variable "db_engine_version" {
  description = "The version of the database engine to use"
  type        = string
  default     = "8.0"

}

variable "db_instance_class" {
  description = "The instance class to use for the database"
  type        = string
  default     = "db.t3.micro"

}

variable "db_username" {
  description = "The username to use for the database"
  type        = string
  default     = "admin"

}

variable "db_password" {
  description = "The password to use for the database"
  type        = string
  default     = "password123"

}

variable "endpoint" {
  description = "The email endpoint for SNS notifications"
  type        = string

}



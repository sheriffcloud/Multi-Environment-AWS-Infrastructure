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
    default = "dev"
  
}

variable "environment" {
    description = "The environment for the VPC"
    type = string
    default = "development"
  
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


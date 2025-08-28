module "networking" {
  source = "./module-networking"

  name             = var.name
  environment      = var.environment
  cidr_block       = var.cidr_block
  instance_tenancy = var.instance_tenancy
  create_subnet    = var.create_subnet
  count_subnets    = var.count_subnets

}
module "compute" {
  source                = "./module-compute"
  cidr_block            = var.cidr_block
  name                  = var.name
  environment           = var.environment
  alb_security_group_id = module.networking.alb_security_group_id
  app_security_group_id = module.networking.app_security_group_id
  db_security_group_id  = module.networking.db_security_group_id
  public_subnet_ids     = module.networking.public_subnet_ids
  private_subnet_ids    = module.networking.private_subnet_ids
  vpc_id                = module.networking.vpc_id
  ami_id                = var.ami_id
  instance_type         = var.instance_type
  key_name              = var.key_name
  user_data             = var.user_data
  max_size              = var.max_size
  min_size              = var.min_size
  desired_capacity      = var.desired_capacity
}
module "database" {
  source                = "./module-database"
  cidr_block            = var.cidr_block
  name                  = var.name
  environment           = var.environment
  db_security_group_id  = module.networking.db_security_group_id
  private_subnet_ids    = module.networking.private_subnet_ids
  public_subnet_ids     = module.networking.public_subnet_ids
  app_security_group_id = module.networking.app_security_group_id
  alb_security_group_id = module.networking.alb_security_group_id
  vpc_id                = module.networking.vpc_id
  allocated_storage     = var.allocated_storage
  db_name               = var.db_name
  db_username           = var.db_username
  db_password           = var.db_password

}

module "monitoring" {
  source                 = "./module-monitoring"
  cidr_block             = var.cidr_block
  name                   = var.name
  environment            = var.environment
  db_security_group_id   = module.networking.db_security_group_id
  private_subnet_ids     = module.networking.private_subnet_ids
  public_subnet_ids      = module.networking.public_subnet_ids
  app_security_group_id  = module.networking.app_security_group_id
  alb_security_group_id  = module.networking.alb_security_group_id
  vpc_id                 = module.networking.vpc_id
  autoscaling_group_name = module.compute.autoscaling_group_name
  scale_out_policy_arn   = module.compute.scale_out_policy_arn
  scale_in_policy_arn    = module.compute.scale_in_policy_arn
  endpoint               = var.endpoint

}

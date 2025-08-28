resource "aws_lb" "tf_alb" {
  name               = "${var.name}-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.alb_security_group_id]
  subnets            = var.public_subnet_ids

  tags = {
    name        = "${var.name}-alb"
    Environment = "production"
  }
}

resource "aws_security_group" "tf_app_sg" {
  name        = "${var.name}-app-sg"
  description = "Allow traffic from ALB"
  vpc_id      = aws_vpc.tf_vpc.id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    security_groups = [aws_security_group.tf_alb_sg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${var.name}-app-sg"
    Environment = var.environment
  }
}

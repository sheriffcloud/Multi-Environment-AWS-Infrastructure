# AutoScaling Group
resource "aws_autoscaling_group" "tf_autoscaling_group" {
  name                      = "${var.name}-asg"
  max_size                  = var.max_size
  min_size                  = var.min_size
  desired_capacity          = var.desired_capacity
  vpc_zone_identifier       = var.private_subnet_ids
  launch_template {
    id      = aws_launch_template.tf_ec2_launch_template.id
    version = "$Latest"
  }

  target_group_arns = [aws_lb_target_group.tf_app_target_group.arn]

  tag {
    key                 = "Name"
    value               = "${var.name}-app"
    propagate_at_launch = true
  }
}
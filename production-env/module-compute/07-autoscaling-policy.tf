resource "aws_autoscaling_policy" "tf_scale_out" {
  name                   = "${var.name}-scale-out-policy"
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
  autoscaling_group_name = aws_autoscaling_group.tf_autoscaling_group.name
  policy_type = "SimpleScaling"
}

resource "aws_autoscaling_policy" "tf_scale_in" {
  name                   = "${var.name}-scale-in-policy"
  scaling_adjustment     = -1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
  autoscaling_group_name = aws_autoscaling_group.tf_autoscaling_group.name
  policy_type = "SimpleScaling"
}


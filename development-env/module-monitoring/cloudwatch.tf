resource "aws_cloudwatch_metric_alarm" "tf_cpu_high" {
  alarm_name          = "${var.name}-cpu-high"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 60
  statistic           = "Average"
  threshold           = 60

  dimensions = {
    AutoScalingGroupName = var.autoscaling_group_name
  }

  alarm_description = "Scale out when CPU >= 60%"
  alarm_actions     = [var.scale_out_policy_arn]
}

resource "aws_cloudwatch_metric_alarm" "tf_cpu_low" {
  alarm_name          = "${var.name}-cpu-low"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 60
  statistic           = "Average"
  threshold           = 20

  dimensions = {
    AutoScalingGroupName = var.autoscaling_group_name
  }

  alarm_description = "Scale in when CPU <= 20%"
  alarm_actions     = [var.scale_in_policy_arn]
}
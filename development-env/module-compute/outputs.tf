output "alb_dns_name" {
    value = aws_lb.tf_alb.dns_name
    description = "The DNS name of the ALB"

}

output "autoscaling_group_name" {
    value = aws_autoscaling_group.tf_autoscaling_group.name
    description = "The name of the Auto Scaling Group"
  
}

output "scale_out_policy_arn" {
    value = aws_autoscaling_policy.tf_scale_out.arn
    description = "The ARN of the scale out policy"
  
}

output "scale_in_policy_arn" {
    value = aws_autoscaling_policy.tf_scale_in.arn
    description = "The ARN of the scale in policy"
  
}
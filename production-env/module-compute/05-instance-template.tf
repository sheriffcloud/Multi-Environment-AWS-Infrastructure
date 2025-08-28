resource "aws_launch_template" "tf_ec2_launch_template" {
  name_prefix   = "${var.name}-ec2-instance"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  iam_instance_profile { 

    name = aws_iam_instance_profile.profile.name 

    }

  user_data = base64encode(var.user_data)

  network_interfaces {

    associate_public_ip_address = false
    security_groups             = [var.app_security_group_id]
    
  }

  tag_specifications {
    resource_type = "instance"
    tags = { 
        name       = "${var.name}-ec2-instance"
        Environment = var.environment 
        }
  }
}
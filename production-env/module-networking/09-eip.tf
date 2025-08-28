resource "aws_eip" "tf_elastic_ip" {
    domain   = "vpc"
    count = var.count_subnets

    tags = {
      name = "${var.name}-eip-${count.index + 1}"
      Environment = var.environment
    }

}
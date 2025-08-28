resource "aws_sns_topic" "tf_sns_alert" {
  name = "${var.name}-alerts"
}


resource "aws_sns_topic_subscription" "tf_user_updates_by_email" {
  topic_arn = aws_sns_topic.tf_sns_alert.arn
  protocol  = "email"
  endpoint  = var.endpoint
}
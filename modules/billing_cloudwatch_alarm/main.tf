resource "aws_sns_topic" "sms_cloudwatch_metrict_alert" {
  name = "resource-expeses-alert"

  tags = var.sms_cloudwatch_metrict_alert_tags
}

resource "aws_cloudwatch_metric_alarm" "billing_cloudwatch_alarm" {
  alarm_name          = var.alarm_name
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "Resources Expenses Metrict"
  namespace           = "AWS/Billing"
  period              = "21600"
  statistic           = "Maximum"
  threshold           = var.threshold
  alarm_description   = "This metric alarm monitors the cost of the current resources every 6 hours"
  alarm_actions       = [aws_sns_topic.sms_cloudwatch_metrict_alert.arn]

  tags = var.billing_cloudwatch_alarm_tags
}

resource "aws_sns_topic_subscription" "sms_cloudwatch_metrict_alert_subcription" {
  topic_arn = aws_sns_topic.sms_cloudwatch_metrict_alert.arn
  protocol  = "sms"
  endpoint  = var.sms_enpoint
}
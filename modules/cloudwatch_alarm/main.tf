resource "aws_cloudwatch_metric_alarm" "cloudwatch_alarm" {
  alarm_name          = var.alarm_name
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "Estimated Resources Cost"
  namespace           = "AWS/Billing"
  period              = "21600"
  statistic           = "Maximum"
  threshold           = var.threshold
  alarm_description   = "This metric alarm monitors the cost of the current resources every 6 hours"
  unit                = "USD"
}
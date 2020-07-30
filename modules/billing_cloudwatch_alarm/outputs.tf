output "cloudwatch_alarm_alarm_name" {
  description = "The alarm name for the billing_cloudwatch_alarm module"
  value       = "${aws_cloudwatch_metric_alarm.billing_cloudwatch_alarm.alarm_name}"
}

output "cloudwatch_alarm_period" {
  description = "Period of time in seconds (6 hrs)"
  value       = "${aws_cloudwatch_metric_alarm.billing_cloudwatch_alarm.period}"
}
output "cloudwatch_alarm_alarm_name" {
  description = "The alarm name for the cloudwatch_alarm module"
  value       = aws_cloudwatch_metric_alarm.cloudwatch_alarm.alarm_name
}

output "cloudwatch_alarm_unit" {
  description = "Currency"
  value       = aws_cloudwatch_metric_alarm.cloudwatch_alarm.unit
}

output "cloudwatch_alarm_period" {
  description = "Period of time in seconds (6 hrs)"
  value       = aws_cloudwatch_metric_alarm.cloudwatch_alarm.period
}
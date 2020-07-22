variable "alarm_name" {
  description = "CloudWatch Alarm Name"
  type        = string
}

variable "usd_amount_threshold" {
  description = "The USD amount threshold"
  type        = string
}

variable "sms_enpoint" {
  description = "Phone number to subscribe to the sms_cloudwatch_metrict_alert SNS Topic"
  type        = string
}
variable "alarm_name" {
  description = "CloudWatch Alarm Name"
  type        = string
}

variable "threshold" {
  description = "The USD amount threshold"
  type        = string
}

variable "sms_enpoint" {
  description = "Phone number to subscribe to the SMS alert"
  type        = string
}

variable "sms_cloudwatch_metrict_alert_tags" {
  description = "Tags for the sms_cloudwatch_metrict_alert resource"
  type        = map(string)
}

variable "billing_cloudwatch_alarm_tags" {
  description = "Tags for the billing_cloudwatch_alarm resource"
  type        = map(string)
}
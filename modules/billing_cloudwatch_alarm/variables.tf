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
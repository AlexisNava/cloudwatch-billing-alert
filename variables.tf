variable "aws_access_key" {
  description = "AWS Access Key ID"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Access Key"
  type        = string
}

variable "sms_enpoint" {
  description = "Phone number to subscribe to the sms_cloudwatch_metrict_alert SNS Topic"
  type        = string
}
variable "sms_enpoint" {
  description = "Phone number to subscribe to the SMS alert"
  type        = string
}

variable "aws_region" {
  description = "The AWS Region where the resource will be created"
  type        = string
  default     = "us-east-1"
}
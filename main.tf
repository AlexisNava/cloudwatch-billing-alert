provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "us-east-1"
}

module "cloudwatch_alarm" {
  source      = "./modules/cloudwatch_alarm"
  alarm_name  = "Resources Expenses Metrict"
  threshold   = "1"
  sms_enpoint = var.sms_enpoint
}
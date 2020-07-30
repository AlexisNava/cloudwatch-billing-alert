provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "alxmedium_administrator"
}

module "billing_cloudwatch_alarm" {
  source      = "./modules/billing_cloudwatch_alarm"
  alarm_name  = "Resources Expenses Metrict"
  threshold   = "1"
  sms_enpoint = "${var.sms_enpoint}"
}

module "s3_versioned_bucket" {
  source      = "./modules/s3_versioned_bucket"
  bucket_name = "terraform-modules-versioned-bucket"
}
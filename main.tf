provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "alxmedium_administrator"
}

module "billing_cloudwatch_alarm" {
  source      = "./modules/billing_cloudwatch_alarm"
  alarm_name  = "Resources Expenses Metrict"
  threshold   = "1"
  sms_enpoint = var.sms_enpoint

  billing_cloudwatch_alarm_tags = {
    "MadeBy"          = "alxmedium_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "billing_cloudwatch_alarm"
    "Project"         = "terraform_modules"
    "SNSTopic"        = "resource-expeses-alert"
  }

  sms_cloudwatch_metrict_alert_tags = {
    "CloudWatchMetric" = "Resources Expenses Metrict"
    "MadeBy"           = "alxmedium_administrator"
    "MadeWith"         = "Terraform"
    "Module/Resource"  = "billing_cloudwatch_alarm"
    "Project"          = "terraform_modules"
  }
}

module "s3_versioned_bucket" {
  source      = "./modules/s3_versioned_bucket"
  bucket_name = "terraform-state-of-terraform-modules-project"

  versioned_s3_bucket_tags = {
    "MadeBy"          = "alxmedium_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "s3_versioned_bucket"
    "Project"         = "terraform_modules"
  }

  versioned_s3_bucket_lifecycle_rule_tags = {
    "MadeBy"          = "alxmedium_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "s3_versioned_bucket"
    "Project"         = "terraform_modules"
  }
}

resource "aws_s3_bucket_object" "terraform_state_object" {
  bucket = module.s3_versioned_bucket.bucket_id
  key    = "terraform.tfstate"
  source = "./terraform.tfstate"
  etag   = filemd5("./terraform.tfstate")

  tags = {
    "MadeBy"          = "alxmedium_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "aws_s3_bucket_object"
    "Project"         = "terraform_modules"
    "S3Bucket"        = "terraform-state-of-terraform-modules-project"
  }
}

resource "aws_s3_bucket_object" "terraform_state_backup_object" {
  bucket = module.s3_versioned_bucket.bucket_id
  key    = "terraform.tfstate.backup"
  source = "./terraform.tfstate.backup"
  etag   = filemd5("./terraform.tfstate.backup")

  tags = {
    "MadeBy"          = "alxmedium_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "aws_s3_bucket_object"
    "Project"         = "terraform_modules"
    "S3Bucket"        = "terraform-state-of-terraform-modules-project"
  }
}
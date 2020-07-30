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
  bucket_name = "terraform-state-of-terraform-modules-project"
}

resource "aws_s3_bucket_object" "terraform_state_object" {
  bucket = module.s3_versioned_bucket.bucket_id
  key    = "terraform.tfstate"
  source = "./terraform.tfstate"
  etag   = filemd5("./terraform.tfstate")

  tags = {
    Bucket  = "terraform-state-of-terraform-modules-project"
    Project = "terraform_modules"
  }
}

resource "aws_s3_bucket_object" "terraform_state_backup_object" {
  bucket = module.s3_versioned_bucket.bucket_id
  key    = "terraform.tfstate.backup"
  source = "./terraform.tfstate.backup"
  etag   = filemd5("./terraform.tfstate.backup")

  tags = {
    Bucket  = "terraform-state-of-terraform-modules-project"
    Project = "terraform_modules"
  }
}
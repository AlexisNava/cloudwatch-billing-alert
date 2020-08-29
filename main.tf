provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "terraform_modules_administrator"
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
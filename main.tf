provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "alxmedium_administrator"
}

provider "aws" {
  region                  = "us-west-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "alxmedium_administrator"
  alias                   = "west_provider"
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

module "replicated_s3_bucket" {
  source      = "./modules/replicated_s3_bucket"

  replicated_source_bucket_name = "terraform-modules-source-bucket"
  
  replicated_source_bucket_tags = {
    "MadeBy"          = "alxmedium_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "replicated_s3_bucket"
    "Project"         = "terraform_modules"
    "S3Bucket"        = "terraform-state-of-terraform-modules-project"
  }
  
  replicated_destination_bucket_name = "terraform-modules-destination-bucket"
  
  replicated_destination_bucket_name_tags = {
    "MadeBy"          = "alxmedium_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "replicated_s3_bucket"
    "Project"         = "terraform_modules"
    "S3Bucket"        = "terraform-state-of-terraform-modules-project"
  }
}
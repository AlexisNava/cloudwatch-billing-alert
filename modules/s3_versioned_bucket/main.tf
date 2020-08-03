resource "aws_s3_bucket" "versioned_s3_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    id      = "versioned_bucket_lifecycle_rule"
    enabled = true

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    expiration {
      days = 90
    }

    tags = {
      "Project"  = "terraform_modules"
      "Module"   = "s3_versioned_bucket"
      "Resource" = "versioned_s3_bucket_lifecycle_rule"
    }
  }

  tags = {
    "Project"  = "terraform_modules"
    "Module"   = "s3_versioned_bucket"
    "Resource" = "versioned_s3_bucket"
  }
}
variable "bucket_name" {
  description = "The name of the versioned bucket"
  type        = string
}

variable "versioned_s3_bucket_tags" {
  description = "Tags for the versioned_s3_bucket resource"
  type        = map(string)
}

variable "versioned_s3_bucket_lifecycle_rule_tags" {
  description = "Tags for the versioned_s3_bucket_lifecycle_rule resource"
  type        = map(string)
}
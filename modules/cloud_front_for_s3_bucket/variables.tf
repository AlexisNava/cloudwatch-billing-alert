variable "cloud_front_s3_bucket_name" {
  description = "Name for the cloud_front_s3_bucket"
  type        = string
}

variable "cloud_front_s3_bucket_tags" {
  description = "Tags for the cloud_front_s3_bucket"
  type        = map(string)
}

variable "cloud_front_distribution_s3_bucket_tags" {
  description = "Tags for the cloud_front_distribution_s3_bucket"
  type        = map(string)
}
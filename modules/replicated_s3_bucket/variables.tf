variable "replicated_destination_bucket_name" {
  description = "Bucket name for the destination bucket"
  type        = string
}

variable "replicated_destination_bucket_name_tags" {
  description = "Tags for the destination bucket"
  type        = map(string)
}

variable "replicated_source_bucket_name" {
  description = "Bucket name for the source bucket"
  type        = string
}

variable "replicated_source_bucket_tags" {
  description = "Tags for the source bucket"
  type        = map(string)
}
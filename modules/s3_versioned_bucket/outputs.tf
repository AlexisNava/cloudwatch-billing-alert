output "bucket_id" {
  description = "ID of the versioned_bucket"
  value       = "${aws_s3_bucket.versioned_bucket.id}"
}

output "bucket_arn" {
  description = "ARN of the versioned_bucket"
  value       = "${aws_s3_bucket.versioned_bucket.arn}"
}

output "bucket_domain_name" {
  description = "Bucket Domain Name of the versioned_bucket"
  value       = "${aws_s3_bucket.versioned_bucket.bucket_domain_name}"
}
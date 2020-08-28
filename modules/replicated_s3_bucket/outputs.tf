output "source_bucket_id" {
  description = "ID of the source_replicated_s3_bucket"
  value       = aws_s3_bucket.replicated_source_bucket.id
}

output "source_bucket_arn" {
  description = "ARN of the source_replicated_s3_bucket"
  value       = aws_s3_bucket.replicated_source_bucket.arn
}

output "source_bucket_domain_name" {
  description = "Bucket Domain Name of the source_replicated_s3_bucket"
  value       = aws_s3_bucket.replicated_source_bucket.bucket_domain_name
}

output "destination_bucket_id" {
  description = "ID of the destination_replicated_s3_bucket"
  value       = aws_s3_bucket.replicated_destination_bucket.id
}

output "destination_bucket_arn" {
  description = "ARN of the destination_replicated_s3_bucket"
  value       = aws_s3_bucket.replicated_destination_bucket.arn
}

output "destination_bucket_domain_name" {
  description = "Bucket Domain Name of the destination_replicated_s3_bucket"
  value       = aws_s3_bucket.replicated_destination_bucket.bucket_domain_name
}
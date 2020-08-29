output "cloud_front_s3_bucket_id" {
  description = "ID of the cloud_front_s3_bucket"
  value       = aws_s3_bucket.cloud_front_s3_bucket.id
}

output "cloud_front_s3_bucket_arn" {
  description = "ARN of the cloud_front_s3_bucket"
  value       = aws_s3_bucket.cloud_front_s3_bucket.arn
}

output "cloud_front_s3_bucket_bucket_domain_name" {
  description = "Bucket Domain Name of the cloud_front_s3_bucket"
  value       = aws_s3_bucket.cloud_front_s3_bucket_bucket_domain_name.bucket_domain_name
}

output "cloud_front_distribution_s3_bucket_id" {
    description = "ID of the cloud_front_distribution_s3_bucket"
    value = aws_cloudfront_distribution.cloud_front_distribution_s3_bucket.id
}

output "cloud_front_distribution_s3_bucket_arn" {
    description = "ARN of the cloud_front_distribution_s3_bucket"
    value = aws_cloudfront_distribution.cloud_front_distribution_s3_bucket.arn
}

output "cloud_front_distribution_s3_bucket_domain_name" {
    description = "Domain Name of the cloud_front_distribution_s3_bucket"
    value = aws_cloudfront_distribution.cloud_front_distribution_s3_bucket.domain_name
}
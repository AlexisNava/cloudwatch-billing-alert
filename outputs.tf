output "terraform_modules_versioned_bucket_id" {
  description = "ID of terraform_modules_versioned_bucket"
  value       = terraform_modules_versioned_bucket.bucket_id
}

output "terraform_modules_versioned_bucket_arn" {
  description = "ARN of the terraform_modules_versioned_bucket"
  value       = terraform_modules_versioned_bucket.bucket_arn
}

output "terraform_modules_versioned_bucket_domain_name" {
  description = "Bucket Domain Name of the terraform_modules_versioned_bucket"
  value       = terraform_modules_versioned_bucket.bucket_domain_name
}
output "terraform_state_of_terraform_modules_project_id" {
  description = "ID of terraform_state_of_terraform_modules_project"
  value       = module.s3_versioned_bucket.bucket_id
}

output "terraform_state_of_terraform_modules_project_arn" {
  description = "ARN of the terraform_state_of_terraform_modules_project"
  value       = module.s3_versioned_bucket.bucket_arn
}

output "terraform_state_of_terraform_modules_project_bucket_domain_name" {
  description = "Bucket Domain Name of the terraform_state_of_terraform_modules_project"
  value       = module.s3_versioned_bucket.bucket_domain_name
}
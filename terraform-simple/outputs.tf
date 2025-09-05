output "success" {
  description = "Indicates the module ran successfully"
  value       = true
}

output "message" {
  description = "Success message including agent"
  value       = local.success_message
}

output "bucket_id" {
  description = "S3 bucket name (ID)"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "S3 bucket ARN"
  value       = aws_s3_bucket.this.arn
}

output "bucket_domain_name" {
  description = "S3 bucket global domain name"
  value       = aws_s3_bucket.this.bucket_domain_name
}

output "bucket_regional_domain_name" {
  description = "S3 bucket regional domain name"
  value       = aws_s3_bucket.this.bucket_regional_domain_name
}

output "aws_region" {
  description = "AWS region used for this deployment"
  value       = var.aws_region
}

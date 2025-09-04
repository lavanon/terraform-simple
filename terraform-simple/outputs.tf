output "success" {
  description = "Indicates the module ran successfully"
  value       = true
}

output "message" {
  description = "Success message including agent"
  value       = local.success_message
}

output "bucket_id" {
  description = "S3 bucket name"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "S3 bucket ARN"
  value       = aws_s3_bucket.this.arn
}



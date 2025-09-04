variable "agent" {
  description = "Agent identifier or name"
  type        = string

  validation {
    condition     = length(trimspace(var.agent)) > 0
    error_message = "agent must be a non-empty string."
  }
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string

  validation {
    condition     = length(trimspace(var.aws_region)) > 0
    error_message = "aws_region must be provided."
  }
}

variable "bucket_name" {
  description = "Name for the S3 bucket (must be globally unique)"
  type        = string

  validation {
    condition     = length(trimspace(var.bucket_name)) > 2
    error_message = "bucket_name must be a non-empty, globally unique name."
  }
}



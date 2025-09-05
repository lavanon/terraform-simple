variable "agent" {
  description = "Agent identifier or name"
  type        = string
  default     = "docker-desktop-3"


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
    condition     = length(regexall("^[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]$", var.bucket_name)) > 0 && length(regexall("^(\\d{1,3}\\.){3}\\d{1,3}$", var.bucket_name)) == 0 && length(regexall("\\.\\.", var.bucket_name)) == 0 && length(regexall("\\.-", var.bucket_name)) == 0 && length(regexall("-\\.", var.bucket_name)) == 0
    error_message = "bucket_name must be 3-63 chars, lowercase letters, numbers, dots or hyphens; not look like an IP; and not contain '..', '.-' or '-.'."
  }
}



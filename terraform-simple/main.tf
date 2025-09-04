locals {
  success_message = "Agent '${var.agent}' processed successfully"
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = {
    ManagedBy = "terraform-simple"
    Agent     = var.agent
  }
}



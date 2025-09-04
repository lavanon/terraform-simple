# terraform-simple module

Simple Terraform module that accepts an `agent` and reports success.

## Usage

```hcl
module "simple" {
  source  = "./terraform-simple" # replace with your VCS source when publishing

  agent       = "my-agent"
  aws_region  = "us-east-1"
  bucket_name = "my-unique-bucket-name-123456"
}
```

## Inputs

- `agent` (string, required): Agent identifier or name.
- `aws_region` (string, required): AWS region.
- `bucket_name` (string, required): Globally unique S3 bucket name.

## Outputs

- `success` (bool): Always `true` to indicate execution completed.
- `message` (string): Human-readable success message including the agent.
- `bucket_id` (string): S3 bucket name.
- `bucket_arn` (string): S3 bucket ARN.

## Notes

This module performs no cloud actions. It validates inputs and emits outputs, which is useful for CI/CD integrations or orchestration tools like Quali Torque.

### Test locally

```bash
terraform init
terraform apply -auto-approve -var "agent=my-agent" -var "aws_region=us-east-1" -var "bucket_name=my-unique-bucket-name-123456"
```

Expected output:

```
Outputs:

bucket_arn = "arn:aws:s3:::my-unique-bucket-name-123456"
bucket_id = "my-unique-bucket-name-123456"
message = "Agent 'my-agent' processed successfully"
success = true
```



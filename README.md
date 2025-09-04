# terraform-simple module

Simple Terraform module that accepts an `agent` and a `release` and reports success.

## Usage

```hcl
module "simple" {
  source  = "./" # replace with your VCS source when publishing

  agent   = "my-agent"
  release = "1.0.0"
}
```

## Inputs

- `agent` (string, required): Agent identifier or name.
- `release` (string, required): Release version or id.

## Outputs

- `success` (bool): Always `true` to indicate execution completed.
- `message` (string): Human-readable success message including the agent and release.

## Notes

This module performs no cloud actions. It validates inputs and emits outputs, which is useful for CI/CD integrations or orchestration tools like Quali Torque.

### Test locally

```bash
terraform init
terraform apply -auto-approve -var "agent=my-agent" -var "release=1.2.3"
```

Expected output:

```
Outputs:

message = "Agent 'my-agent' processed release '1.2.3' successfully"
success = true
```



# terraform-simple module

Simple Terraform module that accepts an `agent` and reports success.

## Usage

```hcl
module "simple" {
  source  = "./" # replace with your VCS source when publishing

  agent   = "my-agent"
}
```

## Inputs

- `agent` (string, required): Agent identifier or name.

## Outputs

- `success` (bool): Always `true` to indicate execution completed.
- `message` (string): Human-readable success message including the agent.

## Notes

This module performs no cloud actions. It validates inputs and emits outputs, which is useful for CI/CD integrations or orchestration tools like Quali Torque.

### Test locally

```bash
terraform init
terraform apply -auto-approve -var "agent=my-agent"
```

Expected output:

```
Outputs:

message = "Agent 'my-agent' processed successfully"
success = true
```



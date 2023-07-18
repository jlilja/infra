# Infra for managed resources

## Terraform

* Setting dns records for cloudflare domain(s).

Terraform code is defined in the [terraform](./terraform/) folder.

### Available commands

* `task tf:format` -  Format Terraform code.
* `task tf:validate` - Validate Terraform code.
* `task tf:init` - Initialize terraform providers and backend.
* `task tf:plan` - Plan Terraform code.
* `task tf:apply` - Apply Terraform code.

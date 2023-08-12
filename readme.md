# Infra for managed resources

## Terraform

* Setting dns records for cloudflare domain(s).

Terraform code is defined in the [terraform](./terraform/) folder.

### Available commands

* `task terraform:cloudflare:format` -  Format Terraform code.
* `task terraform:cloudflare:validate` - Validate Terraform code.
* `task terraform:cloudflare:init` - Initialize terraform providers and backend.
* `task terraform:cloudflare:plan` - Plan Terraform code.
* `task terraform:cloudflare:apply` - Apply Terraform code.

## Ansible

* Manages setup, configuration, and maintenence of a Pihole running on a Raspberry Pi.

Pihole on Raspberry Pi is defined in the [Pihole](./ansible/raspberrypi/pihole/) folder.

* `task ansible:raspberrypi:pihole:bootstrap` - Initial setup of a new Raspberry Pi.

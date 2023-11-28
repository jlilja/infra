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
* Manages the settings for Edgerouter router running on EdgeOS.
* Manages the setup, bootstrapping, and managing minikube kubernetes cluster.

Pihole on Raspberry Pi is defined in the [Pihole](./ansible/pihole/) folder.

* `task ansible:pihole:bootstrap`               - Run playbook meant for an initial setup of a Pihole on a Raspberry Pi

Edgerouter is defined in the [Edgerouter](./ansible/edgerouter/) folder.

* `task ansible:edgerouter:edgeroutersetup`     - Call edgerouter router

Kubernetes configuration is defined in the [Minikube](./ansible/minikube/) folder.

* `task ansible:minikube:harden-ssh`            - Update ssh configs to be more secure
* `task ansible:minikube:install-dependencies`  - Install docker and minikube
* `task ansible:minikube:ping-host`             - Ping the minikube node using ansible module ping
* `task ansible:minikube:transfer-bootstrap`    - Copy bootstrapping scripts to setup a node
* `task ansible:minikube:update-dependencies`   - Update dnf packages
